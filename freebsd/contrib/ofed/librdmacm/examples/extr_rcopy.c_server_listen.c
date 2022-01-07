
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; int ai_flags; } ;


 int RAI_PASSIVE ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (int *,int ,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int perror (char*) ;
 int port ;
 int printf (char*,char*) ;
 int rbind (int,int ,int ) ;
 int rclose (int) ;
 int rlisten (int,int) ;
 int rsetsockopt (int,int ,int ,int*,int) ;
 int rsocket (int ,int ,int ) ;

__attribute__((used)) static int server_listen(void)
{
 struct addrinfo hints, *res;
 int ret, rs;

 memset(&hints, 0, sizeof hints);
 hints.ai_flags = RAI_PASSIVE;
  ret = getaddrinfo(((void*)0), port, &hints, &res);
 if (ret) {
  printf("getaddrinfo failed: %s\n", gai_strerror(ret));
  return ret;
 }

 rs = rsocket(res->ai_family, res->ai_socktype, res->ai_protocol);
 if (rs < 0) {
  perror("rsocket failed\n");
  ret = rs;
  goto free;
 }

 ret = 1;
 ret = rsetsockopt(rs, SOL_SOCKET, SO_REUSEADDR, &ret, sizeof ret);
 if (ret) {
  perror("rsetsockopt failed");
  goto close;
 }

 ret = rbind(rs, res->ai_addr, res->ai_addrlen);
 if (ret) {
  perror("rbind failed");
  goto close;
 }

 ret = rlisten(rs, 1);
 if (ret) {
  perror("rlisten failed");
  goto close;
 }

 ret = rs;
 goto free;

close:
 rclose(rs);
free:
 freeaddrinfo(res);
 return ret;
}
