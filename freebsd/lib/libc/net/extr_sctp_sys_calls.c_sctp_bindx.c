
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sockaddr {int sa_family; int sa_len; } ;
struct sctp_getaddresses {TYPE_1__* addr; scalar_t__ sget_assoc_id; } ;
typedef int socklen_t ;
typedef int caddr_t ;
struct TYPE_2__ {int sa_family; } ;




 int EAFNOSUPPORT ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int IPPROTO_SCTP ;
 int SCTP_BINDX_ADD_ADDR ;
 int SCTP_BINDX_REM_ADDR ;
 int errno ;
 int free (struct sctp_getaddresses*) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (TYPE_1__*,struct sockaddr*,int) ;
 int memset (struct sctp_getaddresses*,int ,size_t) ;
 scalar_t__ setsockopt (int,int ,int,struct sctp_getaddresses*,int ) ;

int
sctp_bindx(int sd, struct sockaddr *addrs, int addrcnt, int flags)
{
 struct sctp_getaddresses *gaddrs;
 struct sockaddr *sa;
 struct sockaddr_in *sin;
 struct sockaddr_in6 *sin6;
 int i;
 size_t argsz;
 uint16_t sport = 0;


 if ((flags != SCTP_BINDX_ADD_ADDR) &&
     (flags != SCTP_BINDX_REM_ADDR)) {
  errno = EFAULT;
  return (-1);
 }

 if ((addrcnt <= 0) || (addrs == ((void*)0))) {
  errno = EINVAL;
  return (-1);
 }

 sa = addrs;
 for (i = 0; i < addrcnt; i++) {
  switch (sa->sa_family) {
  case 129:
   if (sa->sa_len != sizeof(struct sockaddr_in)) {
    errno = EINVAL;
    return (-1);
   }
   sin = (struct sockaddr_in *)sa;
   if (sin->sin_port) {

    if (sport) {

     if (sport != sin->sin_port) {
      errno = EINVAL;
      return (-1);
     }
    } else {

     sport = sin->sin_port;
    }
   }
   break;
  case 128:
   if (sa->sa_len != sizeof(struct sockaddr_in6)) {
    errno = EINVAL;
    return (-1);
   }
   sin6 = (struct sockaddr_in6 *)sa;
   if (sin6->sin6_port) {

    if (sport) {

     if (sport != sin6->sin6_port) {
      errno = EINVAL;
      return (-1);
     }
    } else {

     sport = sin6->sin6_port;
    }
   }
   break;
  default:

   errno = EAFNOSUPPORT;
   return (-1);
  }
  sa = (struct sockaddr *)((caddr_t)sa + sa->sa_len);
 }
 argsz = sizeof(struct sctp_getaddresses) +
     sizeof(struct sockaddr_storage);
 if ((gaddrs = (struct sctp_getaddresses *)malloc(argsz)) == ((void*)0)) {
  errno = ENOMEM;
  return (-1);
 }
 sa = addrs;
 for (i = 0; i < addrcnt; i++) {
  memset(gaddrs, 0, argsz);
  gaddrs->sget_assoc_id = 0;
  memcpy(gaddrs->addr, sa, sa->sa_len);





  if ((i == 0) && (sport != 0)) {
   switch (gaddrs->addr->sa_family) {
   case 129:
    sin = (struct sockaddr_in *)gaddrs->addr;
    sin->sin_port = sport;
    break;
   case 128:
    sin6 = (struct sockaddr_in6 *)gaddrs->addr;
    sin6->sin6_port = sport;
    break;
   }
  }
  if (setsockopt(sd, IPPROTO_SCTP, flags, gaddrs,
      (socklen_t) argsz) != 0) {
   free(gaddrs);
   return (-1);
  }
  sa = (struct sockaddr *)((caddr_t)sa + sa->sa_len);
 }
 free(gaddrs);
 return (0);
}
