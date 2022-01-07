
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int sa_family; int sa_len; } ;
typedef int socklen_t ;
typedef int sctp_assoc_t ;
typedef int caddr_t ;




 int E2BIG ;
 int EINVAL ;
 int IN6_IS_ADDR_V4MAPPED (int *) ;
 int IPPROTO_SCTP ;
 int SCTP_CONNECT_X ;
 int errno ;
 int free (char*) ;
 int in6_sin6_2_sin (struct sockaddr_in*,struct sockaddr_in6*) ;
 char* malloc (int) ;
 int memcpy (char*,struct sockaddr const*,int) ;
 int setsockopt (int,int ,int ,void*,int ) ;

int
sctp_connectx(int sd, const struct sockaddr *addrs, int addrcnt,
    sctp_assoc_t * id)
{
 char *buf;
 int i, ret, *aa;
 char *cpto;
 const struct sockaddr *at;
 size_t len;


 if ((addrs == ((void*)0)) || (addrcnt <= 0)) {
  errno = EINVAL;
  return (-1);
 }
 if ((buf = malloc(sizeof(int) + (size_t)addrcnt * sizeof(struct sockaddr_in6))) == ((void*)0)) {
  errno = E2BIG;
  return (-1);
 }
 len = sizeof(int);
 at = addrs;
 cpto = buf + sizeof(int);

 for (i = 0; i < addrcnt; i++) {
  switch (at->sa_family) {
  case 129:
   if (at->sa_len != sizeof(struct sockaddr_in)) {
    free(buf);
    errno = EINVAL;
    return (-1);
   }
   memcpy(cpto, at, sizeof(struct sockaddr_in));
   cpto = ((caddr_t)cpto + sizeof(struct sockaddr_in));
   len += sizeof(struct sockaddr_in);
   break;
  case 128:
   if (at->sa_len != sizeof(struct sockaddr_in6)) {
    free(buf);
    errno = EINVAL;
    return (-1);
   }
   if (IN6_IS_ADDR_V4MAPPED(&((struct sockaddr_in6 *)at)->sin6_addr)) {
    in6_sin6_2_sin((struct sockaddr_in *)cpto, (struct sockaddr_in6 *)at);
    cpto = ((caddr_t)cpto + sizeof(struct sockaddr_in));
    len += sizeof(struct sockaddr_in);
   } else {
    memcpy(cpto, at, sizeof(struct sockaddr_in6));
    cpto = ((caddr_t)cpto + sizeof(struct sockaddr_in6));
    len += sizeof(struct sockaddr_in6);
   }
   break;
  default:
   free(buf);
   errno = EINVAL;
   return (-1);
  }
  at = (struct sockaddr *)((caddr_t)at + at->sa_len);
 }
 aa = (int *)buf;
 *aa = addrcnt;
 ret = setsockopt(sd, IPPROTO_SCTP, SCTP_CONNECT_X, (void *)buf,
     (socklen_t) len);
 if ((ret == 0) && (id != ((void*)0))) {
  *id = *(sctp_assoc_t *) buf;
 }
 free(buf);
 return (ret);
}
