
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int ai_port_space; } ;
struct TYPE_8__ {int id; int cma_id; } ;
struct TYPE_7__ {TYPE_2__* nodes; int channel; } ;


 int ENOMEM ;
 int connections ;
 scalar_t__ dst_addr ;
 int free (TYPE_2__*) ;
 TYPE_5__ hints ;
 TYPE_2__* malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int printf (char*) ;
 int rdma_create_id (int ,int *,TYPE_2__*,int ) ;
 int rdma_destroy_id (int ) ;
 TYPE_1__ test ;

__attribute__((used)) static int alloc_nodes(void)
{
 int ret, i;

 test.nodes = malloc(sizeof *test.nodes * connections);
 if (!test.nodes) {
  printf("cmatose: unable to allocate memory for test nodes\n");
  return -ENOMEM;
 }
 memset(test.nodes, 0, sizeof *test.nodes * connections);

 for (i = 0; i < connections; i++) {
  test.nodes[i].id = i;
  if (dst_addr) {
   ret = rdma_create_id(test.channel,
          &test.nodes[i].cma_id,
          &test.nodes[i], hints.ai_port_space);
   if (ret)
    goto err;
  }
 }
 return 0;
err:
 while (--i >= 0)
  rdma_destroy_id(test.nodes[i].cma_id);
 free(test.nodes);
 return ret;
}
