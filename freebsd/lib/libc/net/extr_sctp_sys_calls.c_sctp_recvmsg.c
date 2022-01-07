
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct sctp_sndrcvinfo {scalar_t__ sinfo_assoc_id; } ;
struct sctp_extrcvinfo {int dummy; } ;
struct msghdr {int msg_iovlen; char* msg_control; int msg_controllen; int msg_flags; struct iovec* msg_iov; scalar_t__ msg_namelen; scalar_t__ msg_name; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
typedef int ssize_t ;
typedef scalar_t__ socklen_t ;
typedef int cmsgbuf ;
typedef scalar_t__ caddr_t ;


 int CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 struct cmsghdr* CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 int EINVAL ;
 scalar_t__ IPPROTO_SCTP ;
 int SCTP_CONTROL_VEC_SIZE_RCV ;
 scalar_t__ SCTP_EXTRCV ;
 scalar_t__ SCTP_SNDRCV ;
 int SYS_sctp_generic_recvmsg ;
 int errno ;
 int memcpy (struct sctp_sndrcvinfo*,int ,int) ;
 int recvmsg (int,struct msghdr*,int) ;
 int syscall (int ,int,struct iovec*,int,struct sockaddr*,scalar_t__*,struct sctp_sndrcvinfo*,int*) ;

ssize_t
sctp_recvmsg(int s,
    void *dbuf,
    size_t len,
    struct sockaddr *from,
    socklen_t * fromlen,
    struct sctp_sndrcvinfo *sinfo,
    int *msg_flags)
{
 ssize_t sz;
 struct msghdr msg;
 struct iovec iov;
 char cmsgbuf[SCTP_CONTROL_VEC_SIZE_RCV];
 struct cmsghdr *cmsg;

 if (msg_flags == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }
 iov.iov_base = dbuf;
 iov.iov_len = len;
 msg.msg_name = (caddr_t)from;
 if (fromlen == ((void*)0))
  msg.msg_namelen = 0;
 else
  msg.msg_namelen = *fromlen;
 msg.msg_iov = &iov;
 msg.msg_iovlen = 1;
 msg.msg_control = cmsgbuf;
 msg.msg_controllen = sizeof(cmsgbuf);
 msg.msg_flags = 0;
 sz = recvmsg(s, &msg, *msg_flags);
 *msg_flags = msg.msg_flags;
 if (sz <= 0) {
  return (sz);
 }
 if (sinfo) {
  sinfo->sinfo_assoc_id = 0;
 }
 if ((msg.msg_controllen > 0) && (sinfo != ((void*)0))) {




  for (cmsg = CMSG_FIRSTHDR(&msg); cmsg; cmsg = CMSG_NXTHDR(&msg, cmsg)) {
   if (cmsg->cmsg_level != IPPROTO_SCTP) {
    continue;
   }
   if (cmsg->cmsg_type == SCTP_SNDRCV) {
    memcpy(sinfo, CMSG_DATA(cmsg), sizeof(struct sctp_sndrcvinfo));
    break;
   }
   if (cmsg->cmsg_type == SCTP_EXTRCV) {





    memcpy(sinfo, CMSG_DATA(cmsg), sizeof(struct sctp_extrcvinfo));
    break;
   }
  }
 }
 return (sz);

}
