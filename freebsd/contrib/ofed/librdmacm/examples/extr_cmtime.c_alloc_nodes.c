
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int ai_port_space; } ;
struct TYPE_8__ {int id; } ;


 int ENOMEM ;
 int STEP_CREATE_ID ;
 TYPE_1__* calloc (int,int) ;
 int channel ;
 int connections ;
 scalar_t__ dst_addr ;
 int end_perf (TYPE_1__*,int ) ;
 int end_time (int ) ;
 int free (TYPE_1__*) ;
 TYPE_4__ hints ;
 TYPE_1__* nodes ;
 int printf (char*) ;
 int rdma_create_id (int ,int *,TYPE_1__*,int ) ;
 int rdma_destroy_id (int ) ;
 int start_perf (TYPE_1__*,int ) ;
 int start_time (int ) ;

__attribute__((used)) static int alloc_nodes(void)
{
 int ret, i;

 nodes = calloc(sizeof *nodes, connections);
 if (!nodes)
  return -ENOMEM;

 printf("creating id\n");
 start_time(STEP_CREATE_ID);
 for (i = 0; i < connections; i++) {
  start_perf(&nodes[i], STEP_CREATE_ID);
  if (dst_addr) {
   ret = rdma_create_id(channel, &nodes[i].id, &nodes[i],
          hints.ai_port_space);
   if (ret)
    goto err;
  }
  end_perf(&nodes[i], STEP_CREATE_ID);
 }
 end_time(STEP_CREATE_ID);
 return 0;

err:
 while (--i >= 0)
  rdma_destroy_id(nodes[i].id);
 free(nodes);
 return ret;
}
