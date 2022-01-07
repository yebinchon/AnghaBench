
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rdma_event_channel {int dummy; } ;
struct rdma_cm_id {int dummy; } ;
struct TYPE_4__ {struct rdma_event_channel* channel; TYPE_1__* nodes; } ;
struct TYPE_3__ {struct rdma_cm_id* cma_id; } ;


 int connections ;
 int perror (char*) ;
 int printf (char*) ;
 struct rdma_event_channel* rdma_create_event_channel () ;
 int rdma_destroy_event_channel (struct rdma_event_channel*) ;
 int rdma_migrate_id (struct rdma_cm_id*,struct rdma_event_channel*) ;
 TYPE_2__ test ;

__attribute__((used)) static int migrate_channel(struct rdma_cm_id *listen_id)
{
 struct rdma_event_channel *channel;
 int i, ret;

 printf("migrating to new event channel\n");

 channel = rdma_create_event_channel();
 if (!channel) {
  perror("cmatose: failed to create event channel");
  return -1;
 }

 ret = 0;
 if (listen_id)
  ret = rdma_migrate_id(listen_id, channel);

 for (i = 0; i < connections && !ret; i++)
  ret = rdma_migrate_id(test.nodes[i].cma_id, channel);

 if (!ret) {
  rdma_destroy_event_channel(test.channel);
  test.channel = channel;
 } else
  perror("cmatose: failure migrating to channel");

 return ret;
}
