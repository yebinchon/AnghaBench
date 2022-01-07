
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {char* sun_path; } ;
struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;





 scalar_t__ _getsockname (int,struct sockaddr*,int*) ;

int
__rpc_sockisbound(int fd)
{
 struct sockaddr_storage ss;
 socklen_t slen;

 slen = sizeof (struct sockaddr_storage);
 if (_getsockname(fd, (struct sockaddr *)(void *)&ss, &slen) < 0)
  return 0;

 switch (ss.ss_family) {
  case 130:
   return (((struct sockaddr_in *)
       (void *)&ss)->sin_port != 0);





  case 128:

   return (((struct sockaddr_un *)
       (void *)&ss)->sun_path[0] != '\0');
  default:
   break;
 }

 return 0;
}
