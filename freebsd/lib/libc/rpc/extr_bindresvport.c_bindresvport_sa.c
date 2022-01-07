
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sockaddr {int sa_family; int sa_len; } ;
typedef int socklen_t ;
typedef int portlow ;
typedef int old ;
typedef int myaddr ;




 int EPFNOSUPPORT ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_PORTRANGE ;
 int IPV6_PORTRANGE_LOW ;
 int IP_PORTRANGE ;
 int IP_PORTRANGE_LOW ;
 int _bind (int,struct sockaddr*,int) ;
 int _getsockname (int,struct sockaddr*,int*) ;
 int _getsockopt (int,int,int,int*,int*) ;
 int _setsockopt (int,int,int,int*,int) ;
 int errno ;
 int memset (struct sockaddr*,int ,int) ;

int
bindresvport_sa(int sd, struct sockaddr *sa)
{
 int old, error, af;
 struct sockaddr_storage myaddr;
 struct sockaddr_in *sin;



 int proto, portrange, portlow;
 u_int16_t *portp;
 socklen_t salen;

 if (sa == ((void*)0)) {
  salen = sizeof(myaddr);
  sa = (struct sockaddr *)&myaddr;

  if (_getsockname(sd, sa, &salen) == -1)
   return -1;

  af = sa->sa_family;
  memset(sa, 0, salen);
 } else
  af = sa->sa_family;

 switch (af) {
 case 129:
  proto = IPPROTO_IP;
  portrange = IP_PORTRANGE;
  portlow = IP_PORTRANGE_LOW;
  sin = (struct sockaddr_in *)sa;
  salen = sizeof(struct sockaddr_in);
  portp = &sin->sin_port;
  break;
 default:
  errno = EPFNOSUPPORT;
  return (-1);
 }
 sa->sa_family = af;
 sa->sa_len = salen;

 if (*portp == 0) {
  socklen_t oldlen = sizeof(old);

  error = _getsockopt(sd, proto, portrange, &old, &oldlen);
  if (error < 0)
   return (error);

  error = _setsockopt(sd, proto, portrange, &portlow,
      sizeof(portlow));
  if (error < 0)
   return (error);
 }

 error = _bind(sd, sa, salen);

 if (*portp == 0) {
  int saved_errno = errno;

  if (error < 0) {
   if (_setsockopt(sd, proto, portrange, &old,
       sizeof(old)) < 0)
    errno = saved_errno;
   return (error);
  }

  if (sa != (struct sockaddr *)&myaddr) {

   if (_getsockname(sd, sa, &salen) < 0)
    errno = saved_errno;
   return (error);
  }
 }
 return (error);
}
