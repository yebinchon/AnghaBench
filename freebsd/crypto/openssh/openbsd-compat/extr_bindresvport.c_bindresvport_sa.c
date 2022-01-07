
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sockaddr {int sa_family; } ;
typedef int socklen_t ;
typedef int myaddr ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ EADDRINUSE ;
 scalar_t__ EINVAL ;
 scalar_t__ ENDPORT ;
 scalar_t__ EPFNOSUPPORT ;
 int NPORTS ;
 scalar_t__ STARTPORT ;
 scalar_t__ arc4random_uniform (int) ;
 int bind (int,struct sockaddr*,int) ;
 scalar_t__ errno ;
 int getsockname (int,struct sockaddr*,int*) ;
 scalar_t__ htons (scalar_t__) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 scalar_t__ ntohs (scalar_t__) ;

int
bindresvport_sa(int sd, struct sockaddr *sa)
{
 int error, af;
 struct sockaddr_storage myaddr;
 struct sockaddr_in *in;
 struct sockaddr_in6 *in6;
 u_int16_t *portp;
 u_int16_t port;
 socklen_t salen;
 int i;

 if (sa == ((void*)0)) {
  memset(&myaddr, 0, sizeof(myaddr));
  sa = (struct sockaddr *)&myaddr;
  salen = sizeof(myaddr);

  if (getsockname(sd, sa, &salen) == -1)
   return -1;

  af = sa->sa_family;
  memset(&myaddr, 0, salen);
 } else
  af = sa->sa_family;

 if (af == AF_INET) {
  in = (struct sockaddr_in *)sa;
  salen = sizeof(struct sockaddr_in);
  portp = &in->sin_port;
 } else if (af == AF_INET6) {
  in6 = (struct sockaddr_in6 *)sa;
  salen = sizeof(struct sockaddr_in6);
  portp = &in6->sin6_port;
 } else {
  errno = EPFNOSUPPORT;
  return (-1);
 }
 sa->sa_family = af;

 port = ntohs(*portp);
 if (port == 0)
  port = arc4random_uniform(NPORTS) + STARTPORT;


 error = -1;

 for(i = 0; i < NPORTS; i++) {
  *portp = htons(port);

  error = bind(sd, sa, salen);


  if (error == 0)
   break;


  if ((error < 0) && !((errno == EADDRINUSE) || (errno == EINVAL)))
   break;

  port++;
  if (port > ENDPORT)
   port = STARTPORT;
 }

 return (error);
}
