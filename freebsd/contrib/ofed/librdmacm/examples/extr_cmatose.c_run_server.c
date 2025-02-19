
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rdma_cm_id {int dummy; } ;
struct TYPE_10__ {int ai_src_addr; } ;
struct TYPE_9__ {int ai_port_space; } ;
struct TYPE_8__ {int cma_id; scalar_t__ connected; } ;
struct TYPE_7__ {TYPE_3__* nodes; TYPE_6__* rai; int channel; } ;


 int RECV_CQ_INDEX ;
 int SEND_CQ_INDEX ;
 int connect_events () ;
 int connections ;
 int disconnect_events () ;
 int dst_addr ;
 char* gai_strerror (int) ;
 int get_rdma_addr (int ,int ,int ,TYPE_4__*,TYPE_6__**) ;
 TYPE_4__ hints ;
 scalar_t__ message_count ;
 scalar_t__ migrate ;
 int migrate_channel (struct rdma_cm_id*) ;
 int perror (char*) ;
 int poll_cqs (int ) ;
 int port ;
 int post_sends (TYPE_3__*) ;
 int printf (char*,...) ;
 int rdma_bind_addr (struct rdma_cm_id*,int ) ;
 int rdma_create_id (int ,struct rdma_cm_id**,TYPE_1__*,int ) ;
 int rdma_destroy_id (struct rdma_cm_id*) ;
 int rdma_disconnect (int ) ;
 int rdma_listen (struct rdma_cm_id*,int ) ;
 int src_addr ;
 TYPE_1__ test ;

__attribute__((used)) static int run_server(void)
{
 struct rdma_cm_id *listen_id;
 int i, ret;

 printf("cmatose: starting server\n");
 ret = rdma_create_id(test.channel, &listen_id, &test, hints.ai_port_space);
 if (ret) {
  perror("cmatose: listen request failed");
  return ret;
 }

 ret = get_rdma_addr(src_addr, dst_addr, port, &hints, &test.rai);
 if (ret) {
  printf("cmatose: getrdmaaddr error: %s\n", gai_strerror(ret));
  goto out;
 }

 ret = rdma_bind_addr(listen_id, test.rai->ai_src_addr);
 if (ret) {
  perror("cmatose: bind address failed");
  goto out;
 }

 ret = rdma_listen(listen_id, 0);
 if (ret) {
  perror("cmatose: failure trying to listen");
  goto out;
 }

 ret = connect_events();
 if (ret)
  goto out;

 if (message_count) {
  printf("initiating data transfers\n");
  for (i = 0; i < connections; i++) {
   ret = post_sends(&test.nodes[i]);
   if (ret)
    goto out;
  }

  printf("completing sends\n");
  ret = poll_cqs(SEND_CQ_INDEX);
  if (ret)
   goto out;

  printf("receiving data transfers\n");
  ret = poll_cqs(RECV_CQ_INDEX);
  if (ret)
   goto out;
  printf("data transfers complete\n");

 }

 if (migrate) {
  ret = migrate_channel(listen_id);
  if (ret)
   goto out;
 }

 printf("cmatose: disconnecting\n");
 for (i = 0; i < connections; i++) {
  if (!test.nodes[i].connected)
   continue;

  test.nodes[i].connected = 0;
  rdma_disconnect(test.nodes[i].cma_id);
 }

 ret = disconnect_events();

  printf("disconnected\n");

out:
 rdma_destroy_id(listen_id);
 return ret;
}
