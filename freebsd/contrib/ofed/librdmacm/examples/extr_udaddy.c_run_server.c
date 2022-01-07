
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rdma_cm_id {int dummy; } ;
struct TYPE_8__ {int ai_src_addr; } ;
struct TYPE_7__ {int ai_port_space; } ;
struct TYPE_6__ {int * nodes; TYPE_5__* rai; int channel; } ;


 int IBV_SEND_SIGNALED ;
 int connect_events () ;
 int connections ;
 int dst_addr ;
 char* gai_strerror (int) ;
 int get_rdma_addr (int ,int ,int ,TYPE_3__*,TYPE_5__**) ;
 TYPE_3__ hints ;
 scalar_t__ message_count ;
 int perror (char*) ;
 int poll_cqs () ;
 int port ;
 int post_sends (int *,int ) ;
 int printf (char*,...) ;
 int rdma_bind_addr (struct rdma_cm_id*,int ) ;
 int rdma_create_id (int ,struct rdma_cm_id**,TYPE_1__*,int ) ;
 int rdma_destroy_id (struct rdma_cm_id*) ;
 int rdma_listen (struct rdma_cm_id*,int ) ;
 int src_addr ;
 TYPE_1__ test ;

__attribute__((used)) static int run_server(void)
{
 struct rdma_cm_id *listen_id;
 int i, ret;

 printf("udaddy: starting server\n");
 ret = rdma_create_id(test.channel, &listen_id, &test, hints.ai_port_space);
 if (ret) {
  perror("udaddy: listen request failed");
  return ret;
 }

 ret = get_rdma_addr(src_addr, dst_addr, port, &hints, &test.rai);
 if (ret) {
  printf("udaddy: getrdmaaddr error: %s\n", gai_strerror(ret));
  goto out;
 }

 ret = rdma_bind_addr(listen_id, test.rai->ai_src_addr);
 if (ret) {
  perror("udaddy: bind address failed");
  goto out;
 }

 ret = rdma_listen(listen_id, 0);
 if (ret) {
  perror("udaddy: failure trying to listen");
  goto out;
 }

 connect_events();

 if (message_count) {
  printf("receiving data transfers\n");
  ret = poll_cqs();
  if (ret)
   goto out;

  printf("sending replies\n");
  for (i = 0; i < connections; i++) {
   ret = post_sends(&test.nodes[i], IBV_SEND_SIGNALED);
   if (ret)
    goto out;
  }

  ret = poll_cqs();
  if (ret)
   goto out;
  printf("data transfers complete\n");
 }
out:
 rdma_destroy_id(listen_id);
 return ret;
}
