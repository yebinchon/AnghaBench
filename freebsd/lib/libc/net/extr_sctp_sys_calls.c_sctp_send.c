
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct sctp_sndrcvinfo {int dummy; } ;
struct msghdr {int msg_iovlen; char* msg_control; int msg_controllen; scalar_t__ msg_flags; struct iovec* msg_iov; scalar_t__ msg_namelen; int * msg_name; } ;
struct iovec {char* iov_base; size_t iov_len; } ;
struct cmsghdr {int cmsg_len; int cmsg_type; int cmsg_level; } ;
typedef int ssize_t ;


 int CMSG_DATA (struct cmsghdr*) ;
 int CMSG_LEN (int) ;
 int CMSG_SPACE (int) ;
 int EINVAL ;
 int IPPROTO_SCTP ;
 int SCTP_SNDRCV ;
 int SYS_sctp_generic_sendmsg ;
 int errno ;
 int memcpy (int ,struct sctp_sndrcvinfo const*,int) ;
 int sendmsg (int,struct msghdr*,int) ;
 int syscall (int ,int,void const*,size_t,struct sockaddr*,int ,struct sctp_sndrcvinfo const*,int) ;

ssize_t
sctp_send(int sd, const void *data, size_t len,
    const struct sctp_sndrcvinfo *sinfo,
    int flags)
{







 struct msghdr msg;
 struct iovec iov;
 char cmsgbuf[CMSG_SPACE(sizeof(struct sctp_sndrcvinfo))];
 struct cmsghdr *cmsg;

 if (sinfo == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }
 iov.iov_base = (char *)data;
 iov.iov_len = len;

 msg.msg_name = ((void*)0);
 msg.msg_namelen = 0;
 msg.msg_iov = &iov;
 msg.msg_iovlen = 1;
 msg.msg_control = cmsgbuf;
 msg.msg_controllen = CMSG_SPACE(sizeof(struct sctp_sndrcvinfo));
 msg.msg_flags = 0;
 cmsg = (struct cmsghdr *)cmsgbuf;
 cmsg->cmsg_level = IPPROTO_SCTP;
 cmsg->cmsg_type = SCTP_SNDRCV;
 cmsg->cmsg_len = CMSG_LEN(sizeof(struct sctp_sndrcvinfo));
 memcpy(CMSG_DATA(cmsg), sinfo, sizeof(struct sctp_sndrcvinfo));
 return (sendmsg(sd, &msg, flags));

}
