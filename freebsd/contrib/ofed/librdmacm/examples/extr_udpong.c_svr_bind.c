
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; } ;


 int SOCK_DGRAM ;
 int free (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (int ,int ,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int perror (char*) ;
 int port ;
 int printf (char*,char*) ;
 int rs ;
 int rs_bind (int,int ,int ) ;
 int rs_close (int) ;
 int rs_socket (int ,int ,int ) ;
 int set_options (int) ;
 int src_addr ;

__attribute__((used)) static int svr_bind(void)
{
 struct addrinfo hints, *res;
 int ret;

 memset(&hints, 0, sizeof hints);
 hints.ai_socktype = SOCK_DGRAM;
  ret = getaddrinfo(src_addr, port, &hints, &res);
 if (ret) {
  printf("getaddrinfo: %s\n", gai_strerror(ret));
  return ret;
 }

 rs = rs_socket(res->ai_family, res->ai_socktype, res->ai_protocol);
 if (rs < 0) {
  perror("rsocket");
  ret = rs;
  goto out;
 }

 set_options(rs);
 ret = rs_bind(rs, res->ai_addr, res->ai_addrlen);
 if (ret) {
  perror("rbind");
  rs_close(rs);
 }

out:
 free(res);
 return ret;
}
