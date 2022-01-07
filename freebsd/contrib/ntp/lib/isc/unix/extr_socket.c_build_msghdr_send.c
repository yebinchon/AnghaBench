
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int use_min_mtu ;
struct msghdr {unsigned int msg_iovlen; scalar_t__ msg_controllen; scalar_t__ msg_accrightslen; int * msg_accrights; int * msg_control; scalar_t__ msg_flags; struct iovec* msg_iov; scalar_t__ msg_namelen; int * msg_name; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
struct in6_pktinfo {int dummy; } ;
struct cmsghdr {void* cmsg_len; int cmsg_type; void* cmsg_level; } ;
struct TYPE_13__ {size_t length; scalar_t__ base; } ;
struct TYPE_11__ {int sa; } ;
struct TYPE_12__ {scalar_t__ length; TYPE_1__ type; } ;
struct TYPE_14__ {size_t n; int attributes; int pktinfo; TYPE_3__ region; int bufferlist; TYPE_2__ address; } ;
typedef TYPE_4__ isc_socketevent_t ;
struct TYPE_15__ {size_t length; scalar_t__ base; } ;
typedef TYPE_5__ isc_region_t ;
typedef int isc_buffer_t ;
struct TYPE_16__ {scalar_t__ type; scalar_t__ sendcmsgbuflen; scalar_t__ sendcmsgbuf; int connected; } ;
typedef TYPE_6__ isc__socket_t ;


 struct in6_pktinfo* CMSG_DATA (struct cmsghdr*) ;
 int INSIST (int) ;
 void* IPPROTO_IPV6 ;
 int IPV6_PKTINFO ;
 int IPV6_USE_MIN_MTU ;
 int ISC_BUFFER_VALID (int *) ;
 int * ISC_LIST_HEAD (int ) ;
 int * ISC_LIST_NEXT (int *,int ) ;
 int ISC_MSGSET_SOCKET ;
 int ISC_MSG_SENDTODATA ;
 int ISC_SOCKEVENTATTR_PKTINFO ;
 unsigned int MAXSCATTERGATHER_SEND ;
 int REQUIRE (int ) ;
 int TRACE ;
 void* cmsg_len (int) ;
 scalar_t__ cmsg_space (int) ;
 size_t isc_buffer_usedlength (int *) ;
 int isc_buffer_usedregion (int *,TYPE_5__*) ;
 int isc_msgcat ;
 scalar_t__ isc_sockettype_udp ;
 int link ;
 int memcpy (struct in6_pktinfo*,int*,int) ;
 int memset (struct msghdr*,int ,int) ;
 int socket_log (TYPE_6__*,int *,int ,int ,int ,int ,char*,int ) ;

__attribute__((used)) static void
build_msghdr_send(isc__socket_t *sock, isc_socketevent_t *dev,
    struct msghdr *msg, struct iovec *iov, size_t *write_countp)
{
 unsigned int iovcount;
 isc_buffer_t *buffer;
 isc_region_t used;
 size_t write_count;
 size_t skip_count;

 memset(msg, 0, sizeof(*msg));

 if (!sock->connected) {
  msg->msg_name = (void *)&dev->address.type.sa;
  msg->msg_namelen = dev->address.length;
 } else {
  msg->msg_name = ((void*)0);
  msg->msg_namelen = 0;
 }

 buffer = ISC_LIST_HEAD(dev->bufferlist);
 write_count = 0;
 iovcount = 0;




 if (buffer == ((void*)0)) {
  write_count = dev->region.length - dev->n;
  iov[0].iov_base = (void *)(dev->region.base + dev->n);
  iov[0].iov_len = write_count;
  iovcount = 1;

  goto config;
 }





 skip_count = dev->n;
 while (buffer != ((void*)0)) {
  REQUIRE(ISC_BUFFER_VALID(buffer));
  if (skip_count < isc_buffer_usedlength(buffer))
   break;
  skip_count -= isc_buffer_usedlength(buffer);
  buffer = ISC_LIST_NEXT(buffer, link);
 }

 while (buffer != ((void*)0)) {
  INSIST(iovcount < MAXSCATTERGATHER_SEND);

  isc_buffer_usedregion(buffer, &used);

  if (used.length > 0) {
   iov[iovcount].iov_base = (void *)(used.base
         + skip_count);
   iov[iovcount].iov_len = used.length - skip_count;
   write_count += (used.length - skip_count);
   skip_count = 0;
   iovcount++;
  }
  buffer = ISC_LIST_NEXT(buffer, link);
 }

 INSIST(skip_count == 0U);

 config:
 msg->msg_iov = iov;
 msg->msg_iovlen = iovcount;
 msg->msg_accrights = ((void*)0);
 msg->msg_accrightslen = 0;


 if (write_countp != ((void*)0))
  *write_countp = write_count;
}
