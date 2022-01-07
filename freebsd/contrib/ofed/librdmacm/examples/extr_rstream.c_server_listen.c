
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rdma_addrinfo {int ai_src_len; int ai_src_addr; int ai_family; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_family; } ;
struct TYPE_6__ {int ai_flags; } ;
struct TYPE_5__ {int ai_flags; } ;


 int AI_PASSIVE ;
 int RAI_PASSIVE ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 TYPE_3__ ai_hints ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (int ,int ,TYPE_3__*,struct addrinfo**) ;
 int lrs ;
 int perror (char*) ;
 int port ;
 int printf (char*,char*) ;
 TYPE_1__ rai_hints ;
 int rdma_freeaddrinfo (struct rdma_addrinfo*) ;
 int rdma_getaddrinfo (int ,int ,TYPE_1__*,struct rdma_addrinfo**) ;
 int rs_bind (int,int ,int ) ;
 int rs_close (int) ;
 int rs_listen (int,int) ;
 int rs_setsockopt (int,int ,int ,int*,int) ;
 int rs_socket (int ,int ,int ) ;
 int src_addr ;
 scalar_t__ use_rgai ;

__attribute__((used)) static int server_listen(void)
{
 struct rdma_addrinfo *rai = ((void*)0);
 struct addrinfo *ai;
 int val, ret;

 if (use_rgai) {
  rai_hints.ai_flags |= RAI_PASSIVE;
  ret = rdma_getaddrinfo(src_addr, port, &rai_hints, &rai);
 } else {
  ai_hints.ai_flags |= AI_PASSIVE;
  ret = getaddrinfo(src_addr, port, &ai_hints, &ai);
 }
 if (ret) {
  printf("getaddrinfo: %s\n", gai_strerror(ret));
  return ret;
 }

 lrs = rai ? rs_socket(rai->ai_family, SOCK_STREAM, 0) :
      rs_socket(ai->ai_family, SOCK_STREAM, 0);
 if (lrs < 0) {
  perror("rsocket");
  ret = lrs;
  goto free;
 }

 val = 1;
 ret = rs_setsockopt(lrs, SOL_SOCKET, SO_REUSEADDR, &val, sizeof val);
 if (ret) {
  perror("rsetsockopt SO_REUSEADDR");
  goto close;
 }

 ret = rai ? rs_bind(lrs, rai->ai_src_addr, rai->ai_src_len) :
      rs_bind(lrs, ai->ai_addr, ai->ai_addrlen);
 if (ret) {
  perror("rbind");
  goto close;
 }

 ret = rs_listen(lrs, 1);
 if (ret)
  perror("rlisten");

close:
 if (ret)
  rs_close(lrs);
free:
 if (rai)
  rdma_freeaddrinfo(rai);
 else
  freeaddrinfo(ai);
 return ret;
}
