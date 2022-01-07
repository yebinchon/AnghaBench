
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_un {char* sun_path; } ;
struct TYPE_4__ {int * s6_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in6 {void* sin6_port; TYPE_2__ sin6_addr; int sin6_family; void* sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr_in {void* sin6_port; TYPE_2__ sin6_addr; int sin6_family; void* sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 int AF_INET ;
 int AF_INET6 ;
 int EINVAL ;
 unsigned int MAX_WRAPPED_INTERFACES ;
 int SOCKET_FORMAT ;




 int SW_IPV6_ADDRESS ;
 int errno ;
 int htonl (int) ;
 void* htons (unsigned int) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int sscanf (char const*,int ,char*,unsigned int*,unsigned int*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int convert_un_in(const struct sockaddr_un *un, struct sockaddr *in, socklen_t *len)
{
 unsigned int iface;
 unsigned int prt;
 const char *p;
 char type;

 p = strrchr(un->sun_path, '/');
 if (p) p++; else p = un->sun_path;

 if (sscanf(p, SOCKET_FORMAT, &type, &iface, &prt) != 3) {
  errno = EINVAL;
  return -1;
 }

 if (iface == 0 || iface > MAX_WRAPPED_INTERFACES) {
  errno = EINVAL;
  return -1;
 }

 if (prt > 0xFFFF) {
  errno = EINVAL;
  return -1;
 }

 switch(type) {
 case 131:
 case 129: {
  struct sockaddr_in *in2 = (struct sockaddr_in *)in;

  if ((*len) < sizeof(*in2)) {
      errno = EINVAL;
      return -1;
  }

  memset(in2, 0, sizeof(*in2));
  in2->sin_family = AF_INET;
  in2->sin_addr.s_addr = htonl((127<<24) | iface);
  in2->sin_port = htons(prt);

  *len = sizeof(*in2);
  break;
 }
 default:
  errno = EINVAL;
  return -1;
 }

 return 0;
}
