
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


 int RECV_CQ_INDEX ;
 int connect_error () ;
 int connect_events () ;
 int connections ;
 int disconnect_events () ;
 int dst_addr ;
 char* gai_strerror (int) ;
 int get_rdma_addr (int ,int ,int ,int *,TYPE_3__**) ;
 int hints ;
 scalar_t__ message_count ;
 scalar_t__ migrate ;
 int migrate_channel (int *) ;
 int perror (char*) ;
 int poll_cqs (int ) ;
 int port ;
 int post_sends (TYPE_2__*) ;
 int printf (char*,...) ;
 int rdma_resolve_addr (int ,int ,int ,int) ;
 int src_addr ;
 TYPE_1__ test ;

__attribute__((used)) static int run_client(void)
{
 int i, ret, ret2;

 printf("cmatose: starting client\n");

 ret = get_rdma_addr(src_addr, dst_addr, port, &hints, &test.rai);
 if (ret) {
  printf("cmatose: getaddrinfo error: %s\n", gai_strerror(ret));
  return ret;
 }

 printf("cmatose: connecting\n");
 for (i = 0; i < connections; i++) {
  ret = rdma_resolve_addr(test.nodes[i].cma_id, test.rai->ai_src_addr,
     test.rai->ai_dst_addr, 2000);
  if (ret) {
   perror("cmatose: failure getting addr");
   connect_error();
   return ret;
  }
 }

 ret = connect_events();
 if (ret)
  goto disc;

 if (message_count) {
  printf("receiving data transfers\n");
  ret = poll_cqs(RECV_CQ_INDEX);
  if (ret)
   goto disc;

  printf("sending replies\n");
  for (i = 0; i < connections; i++) {
   ret = post_sends(&test.nodes[i]);
   if (ret)
    goto disc;
  }

  printf("data transfers complete\n");
 }

 ret = 0;

 if (migrate) {
  ret = migrate_channel(((void*)0));
  if (ret)
   goto out;
 }
disc:
 ret2 = disconnect_events();
 if (ret2)
  ret = ret2;
out:
 return ret;
}
