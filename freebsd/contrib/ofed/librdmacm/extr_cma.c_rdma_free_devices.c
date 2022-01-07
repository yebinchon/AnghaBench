
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_context {int dummy; } ;


 int free (struct ibv_context**) ;

void rdma_free_devices(struct ibv_context **list)
{
 free(list);
}
