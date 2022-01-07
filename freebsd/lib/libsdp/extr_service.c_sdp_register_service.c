
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uuid ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct iovec {int iov_len; void* iov_base; } ;
typedef TYPE_1__* sdp_session_p ;
struct TYPE_5__ {void* len; void* tid; int pid; } ;
typedef TYPE_2__ sdp_pdu_t ;
typedef int pdu ;
typedef int iov ;
typedef int int32_t ;
typedef int * bdaddr_p ;
struct TYPE_4__ {int flags; int tid; scalar_t__* rsp; scalar_t__ error; int s; } ;


 scalar_t__ EINTR ;
 scalar_t__ EINVAL ;
 scalar_t__ EIO ;
 scalar_t__ EMSGSIZE ;
 int SDP_LOCAL_MTU ;
 int SDP_PDU_SERVICE_REGISTER_REQUEST ;
 int SDP_SESSION_LOCAL ;
 scalar_t__ errno ;
 void* htons (int) ;
 int sdp_receive_error_pdu (TYPE_1__*) ;
 int writev (int ,struct iovec*,int) ;

int32_t
sdp_register_service(void *xss, uint16_t uuid, bdaddr_p const bdaddr,
  uint8_t const *data, uint32_t datalen, uint32_t *handle)
{
 sdp_session_p ss = (sdp_session_p) xss;
 struct iovec iov[4];
 sdp_pdu_t pdu;
 int32_t len;

 if (ss == ((void*)0))
  return (-1);
 if (bdaddr == ((void*)0) || data == ((void*)0) ||
     datalen == 0 || !(ss->flags & SDP_SESSION_LOCAL)) {
  ss->error = EINVAL;
  return (-1);
 }
 if (sizeof(pdu)+sizeof(uuid)+sizeof(*bdaddr)+datalen > SDP_LOCAL_MTU) {
  ss->error = EMSGSIZE;
  return (-1);
 }

 pdu.pid = SDP_PDU_SERVICE_REGISTER_REQUEST;
 pdu.tid = htons(++ss->tid);
 pdu.len = htons(sizeof(uuid) + sizeof(*bdaddr) + datalen);

 uuid = htons(uuid);

 iov[0].iov_base = (void *) &pdu;
 iov[0].iov_len = sizeof(pdu);

 iov[1].iov_base = (void *) &uuid;
 iov[1].iov_len = sizeof(uuid);

 iov[2].iov_base = (void *) bdaddr;
 iov[2].iov_len = sizeof(*bdaddr);

 iov[3].iov_base = (void *) data;
 iov[3].iov_len = datalen;

 do {
  len = writev(ss->s, iov, sizeof(iov)/sizeof(iov[0]));
 } while (len < 0 && errno == EINTR);

 if (len < 0) {
  ss->error = errno;
  return (-1);
 }

 len = sdp_receive_error_pdu(ss);
 if (len < 0)
  return (-1);
 if (len != sizeof(pdu) + sizeof(uint16_t) + sizeof(uint32_t)) {
  ss->error = EIO;
  return (-1);
 }

 if (handle != ((void*)0)) {
  *handle = (uint32_t) ss->rsp[--len];
  *handle |= (uint32_t) ss->rsp[--len] << 8;
  *handle |= (uint32_t) ss->rsp[--len] << 16;
  *handle |= (uint32_t) ss->rsp[--len] << 24;
 }

 return (0);
}
