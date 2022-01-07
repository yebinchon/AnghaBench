
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ id; } ;


 int STEP_DESTROY ;
 int connections ;
 int end_perf (TYPE_1__*,int ) ;
 int end_time (int ) ;
 TYPE_1__* nodes ;
 int printf (char*) ;
 int rdma_destroy_id (scalar_t__) ;
 int start_perf (TYPE_1__*,int ) ;
 int start_time (int ) ;

__attribute__((used)) static void cleanup_nodes(void)
{
 int i;

 printf("destroying id\n");
 start_time(STEP_DESTROY);
 for (i = 0; i < connections; i++) {
  start_perf(&nodes[i], STEP_DESTROY);
  if (nodes[i].id)
   rdma_destroy_id(nodes[i].id);
  end_perf(&nodes[i], STEP_DESTROY);
 }
 end_time(STEP_DESTROY);
}
