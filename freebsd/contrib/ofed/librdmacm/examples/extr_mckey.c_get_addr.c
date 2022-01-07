
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct addrinfo {int ai_addrlen; int ai_addr; } ;


 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char*,int *,int *,struct addrinfo**) ;
 int memcpy (struct sockaddr*,int ,int ) ;
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

 memcpy(addr, res->ai_addr, res->ai_addrlen);
 freeaddrinfo(res);
 return ret;
}
