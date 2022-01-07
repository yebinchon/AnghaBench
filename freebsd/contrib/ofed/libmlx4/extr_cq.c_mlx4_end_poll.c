
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_cq_ex {int dummy; } ;


 int _mlx4_end_poll (struct ibv_cq_ex*,int ) ;

__attribute__((used)) static void mlx4_end_poll(struct ibv_cq_ex *ibcq)
{
 _mlx4_end_poll(ibcq, 0);
}
