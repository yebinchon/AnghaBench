
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_cq {int dummy; } ;
struct TYPE_2__ {int arm_sn; } ;


 TYPE_1__* to_mcq (struct ibv_cq*) ;

void mlx4_cq_event(struct ibv_cq *cq)
{
 to_mcq(cq)->arm_sn++;
}
