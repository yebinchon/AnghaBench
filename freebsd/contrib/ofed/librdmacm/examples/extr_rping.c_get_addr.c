
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {scalar_t__ ai_family; int ai_addr; } ;


 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char*,int *,int *,struct addrinfo**) ;
 int memcpy (struct sockaddr*,int ,int) ;
 int printf (char*,char*) ;

__attribute__((used)) static int get_addr(char *dst, struct sockaddr *addr)
{
 struct addrinfo *res;
 int ret;

 ret = getaddrinfo(dst, ((void*)0), ((void*)0), &res);
 if (ret) {
  printf("getaddrinfo failed (%s) - invalid hostname or IP address\n", gai_strerror(ret));
  return ret;
 }

 if (res->ai_family == PF_INET)
  memcpy(addr, res->ai_addr, sizeof(struct sockaddr_in));
 else if (res->ai_family == PF_INET6)
  memcpy(addr, res->ai_addr, sizeof(struct sockaddr_in6));
 else
  ret = -1;

 freeaddrinfo(res);
 return ret;
}
