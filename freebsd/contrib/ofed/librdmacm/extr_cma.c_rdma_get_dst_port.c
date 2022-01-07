
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dst_addr; } ;
struct TYPE_4__ {TYPE_1__ addr; } ;
struct rdma_cm_id {TYPE_2__ route; } ;
typedef int __be16 ;


 int ucma_get_port (int *) ;

__be16 rdma_get_dst_port(struct rdma_cm_id *id)
{
 return ucma_get_port(&id->route.addr.dst_addr);
}
