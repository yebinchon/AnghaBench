
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {int type; } ;
struct sockaddr_un {int sun_family; } ;
struct sockaddr {int sa_family; } ;
typedef int socklen_t ;




 int AF_UNIX ;
 int EAFNOSUPPORT ;
 int ESOCKTNOSUPPORT ;


 int convert_in_un_alloc (struct socket_info*,struct sockaddr const*,struct sockaddr_un*,int*) ;
 int convert_in_un_remote (struct socket_info*,struct sockaddr const*,struct sockaddr_un*,int*) ;
 int errno ;

__attribute__((used)) static int sockaddr_convert_to_un(struct socket_info *si, const struct sockaddr *in_addr, socklen_t in_len,
      struct sockaddr_un *out_addr, int alloc_sock, int *bcast)
{
 if (!out_addr)
  return 0;

 out_addr->sun_family = AF_UNIX;

 switch (in_addr->sa_family) {
 case 131:



  switch (si->type) {
  case 128:
  case 129:
   break;
  default:
   errno = ESOCKTNOSUPPORT;
   return -1;
  }
  if (alloc_sock) {
   return convert_in_un_alloc(si, in_addr, out_addr, bcast);
  } else {
   return convert_in_un_remote(si, in_addr, out_addr, bcast);
  }
 default:
  break;
 }

 errno = EAFNOSUPPORT;
 return -1;
}
