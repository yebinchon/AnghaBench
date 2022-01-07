
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin_addr; scalar_t__ sin_family; void* sin_port; int sin6_addr; scalar_t__ sin6_family; scalar_t__ sin6_scope_id; void* sin6_port; } ;
struct sockaddr_in {int sin_addr; scalar_t__ sin_family; void* sin_port; int sin6_addr; scalar_t__ sin6_family; scalar_t__ sin6_scope_id; void* sin6_port; } ;
typedef int socklen_t ;
typedef void* in_port_t ;
typedef int buf ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int MAX_ADDR_STRLEN ;
 scalar_t__ atoi (char*) ;
 scalar_t__ htons (scalar_t__) ;
 scalar_t__ inet_pton (int,char const*,int *) ;
 int memset (struct sockaddr_in6*,int ,int ) ;
 scalar_t__ str_is_ip6 (char const*) ;
 char* strchr (char const*,char) ;
 int strlcpy (char*,char const*,int) ;

int
ipstrtoaddr(const char* ip, int port, struct sockaddr_storage* addr,
 socklen_t* addrlen)
{
 uint16_t p;
 if(!ip) return 0;
 p = (uint16_t) port;
 if(str_is_ip6(ip)) {
  char buf[MAX_ADDR_STRLEN];
  char* s;
  struct sockaddr_in6* sa = (struct sockaddr_in6*)addr;
  *addrlen = (socklen_t)sizeof(struct sockaddr_in6);
  memset(sa, 0, *addrlen);
  sa->sin6_family = AF_INET6;
  sa->sin6_port = (in_port_t)htons(p);
  if((s=strchr(ip, '%'))) {
   if(s-ip >= MAX_ADDR_STRLEN)
    return 0;
   (void)strlcpy(buf, ip, sizeof(buf));
   buf[s-ip]=0;
   sa->sin6_scope_id = (uint32_t)atoi(s+1);
   ip = buf;
  }
  if(inet_pton((int)sa->sin6_family, ip, &sa->sin6_addr) <= 0) {
   return 0;
  }
 } else {
  struct sockaddr_in* sa = (struct sockaddr_in*)addr;
  *addrlen = (socklen_t)sizeof(struct sockaddr_in);
  memset(sa, 0, *addrlen);
  sa->sin_family = AF_INET;
  sa->sin_port = (in_port_t)htons(p);
  if(inet_pton((int)sa->sin_family, ip, &sa->sin_addr) <= 0) {
   return 0;
  }
 }
 return 1;
}
