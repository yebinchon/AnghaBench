
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; scalar_t__ sa_len; } ;
struct sctp_sndrcvinfo {scalar_t__ sinfo_assoc_id; } ;
typedef int ssize_t ;
typedef scalar_t__ socklen_t ;
typedef scalar_t__ caddr_t ;
typedef int __sinfo ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EALREADY ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int IPPROTO_SCTP ;
 int SCTP_CONNECT_X_COMPLETE ;
 int SCTP_CONNECT_X_DELAYED ;
 int SYS_sctp_generic_sendmsg ;
 int errno ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (scalar_t__,struct sockaddr*,size_t) ;
 int memset (struct sctp_sndrcvinfo*,int ,int) ;
 void* sctp_getassocid (int,struct sockaddr*) ;
 int sctp_send (int,void const*,size_t,struct sctp_sndrcvinfo*,int) ;
 int setsockopt (int,int ,int ,void*,scalar_t__) ;
 int syscall (int ,int,void const*,size_t,struct sockaddr*,scalar_t__,struct sctp_sndrcvinfo*,int) ;

ssize_t
sctp_sendx(int sd, const void *msg, size_t msg_len,
    struct sockaddr *addrs, int addrcnt,
    struct sctp_sndrcvinfo *sinfo,
    int flags)
{
 struct sctp_sndrcvinfo __sinfo;
 ssize_t ret;
 int i, cnt, *aa, saved_errno;
 char *buf;
 int no_end_cx = 0;
 size_t len, add_len;
 struct sockaddr *at;

 if (addrs == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }
 len = sizeof(int);
 at = addrs;
 cnt = 0;

 for (i = 0; i < addrcnt; i++) {
  if (at->sa_family == AF_INET) {
   add_len = sizeof(struct sockaddr_in);
  } else if (at->sa_family == AF_INET6) {
   add_len = sizeof(struct sockaddr_in6);
  } else {
   errno = EINVAL;
   return (-1);
  }
  len += add_len;
  at = (struct sockaddr *)((caddr_t)at + add_len);
  cnt++;
 }

 if (cnt == 0) {
  errno = EINVAL;
  return (-1);
 }
 buf = malloc(len);
 if (buf == ((void*)0)) {
  errno = ENOMEM;
  return (-1);
 }
 aa = (int *)buf;
 *aa = cnt;
 aa++;
 memcpy((caddr_t)aa, addrs, (size_t)(len - sizeof(int)));
 ret = setsockopt(sd, IPPROTO_SCTP, SCTP_CONNECT_X_DELAYED, (void *)buf,
     (socklen_t) len);

 free(buf);
 if (ret != 0) {
  if (errno == EALREADY) {
   no_end_cx = 1;
   goto continue_send;
  }
  return (ret);
 }
continue_send:
 if (sinfo == ((void*)0)) {
  sinfo = &__sinfo;
  memset(&__sinfo, 0, sizeof(__sinfo));
 }
 sinfo->sinfo_assoc_id = sctp_getassocid(sd, addrs);
 if (sinfo->sinfo_assoc_id == 0) {
  (void)setsockopt(sd, IPPROTO_SCTP, SCTP_CONNECT_X_COMPLETE, (void *)addrs,
      (socklen_t) addrs->sa_len);
  errno = ENOENT;
  return (-1);
 }
 ret = sctp_send(sd, msg, msg_len, sinfo, flags);
 saved_errno = errno;
 if (no_end_cx == 0)
  (void)setsockopt(sd, IPPROTO_SCTP, SCTP_CONNECT_X_COMPLETE, (void *)addrs,
      (socklen_t) addrs->sa_len);

 errno = saved_errno;
 return (ret);
}
