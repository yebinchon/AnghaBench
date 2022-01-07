
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; } ;


 int dst_addr ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (int ,int ,int *,struct addrinfo**) ;
 int perror (char*) ;
 int port ;
 int printf (char*,char*) ;
 int rclose (int) ;
 int rconnect (int,int ,int ) ;
 int rsocket (int ,int ,int ) ;

__attribute__((used)) static int client_connect(void)
{
 struct addrinfo *res;
 int ret, rs;

  ret = getaddrinfo(dst_addr, port, ((void*)0), &res);
 if (ret) {
  printf("getaddrinfo failed: %s\n", gai_strerror(ret));
  return ret;
 }

 rs = rsocket(res->ai_family, res->ai_socktype, res->ai_protocol);
 if (rs < 0) {
  perror("rsocket failed\n");
  goto free;
 }

 ret = rconnect(rs, res->ai_addr, res->ai_addrlen);
 if (ret) {
  perror("rconnect failed\n");
  rclose(rs);
  rs = ret;
 }

free:
 freeaddrinfo(res);
 return rs;
}
