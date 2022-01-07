
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ai_dst_addr; int ai_src_addr; } ;
struct TYPE_5__ {int cma_id; } ;
struct TYPE_4__ {TYPE_2__* nodes; TYPE_3__* rai; } ;


 int connect_error () ;
 int connect_events () ;
 int connections ;
 int dst_addr ;
 char* gai_strerror (int) ;
 int get_rdma_addr (int ,int ,int ,int *,TYPE_3__**) ;
 int hints ;
 scalar_t__ message_count ;
 int perror (char*) ;
 int poll_cqs () ;
 int port ;
 int post_sends (TYPE_2__*,int ) ;
 int printf (char*,...) ;
 int rdma_resolve_addr (int ,int ,int ,int) ;
 int src_addr ;
 TYPE_1__ test ;

__attribute__((used)) static int run_client(void)
{
 int i, ret;

 printf("udaddy: starting client\n");

 ret = get_rdma_addr(src_addr, dst_addr, port, &hints, &test.rai);
 if (ret) {
  printf("udaddy: getaddrinfo error: %s\n", gai_strerror(ret));
  return ret;
 }

 printf("udaddy: connecting\n");
 for (i = 0; i < connections; i++) {
  ret = rdma_resolve_addr(test.nodes[i].cma_id, test.rai->ai_src_addr,
     test.rai->ai_dst_addr, 2000);
  if (ret) {
   perror("udaddy: failure getting addr");
   connect_error();
   return ret;
  }
 }

 ret = connect_events();
 if (ret)
  goto out;

 if (message_count) {
  printf("initiating data transfers\n");
  for (i = 0; i < connections; i++) {
   ret = post_sends(&test.nodes[i], 0);
   if (ret)
    goto out;
  }
  printf("receiving data transfers\n");
  ret = poll_cqs();
  if (ret)
   goto out;

  printf("data transfers complete\n");
 }
out:
 return ret;
}
