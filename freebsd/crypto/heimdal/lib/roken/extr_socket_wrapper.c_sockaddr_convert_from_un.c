
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {int type; } ;
struct sockaddr_un {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ socklen_t ;




 int EAFNOSUPPORT ;
 int ESOCKTNOSUPPORT ;


 int convert_un_in (struct sockaddr_un const*,struct sockaddr*,scalar_t__*) ;
 int errno ;

__attribute__((used)) static int sockaddr_convert_from_un(const struct socket_info *si,
        const struct sockaddr_un *in_addr,
        socklen_t un_addrlen,
        int family,
        struct sockaddr *out_addr,
        socklen_t *out_addrlen)
{
 if (out_addr == ((void*)0) || out_addrlen == ((void*)0))
  return 0;

 if (un_addrlen == 0) {
  *out_addrlen = 0;
  return 0;
 }

 switch (family) {
 case 131:



  switch (si->type) {
  case 128:
  case 129:
   break;
  default:
   errno = ESOCKTNOSUPPORT;
   return -1;
  }
  return convert_un_in(in_addr, out_addr, out_addrlen);
 default:
  break;
 }

 errno = EAFNOSUPPORT;
 return -1;
}
