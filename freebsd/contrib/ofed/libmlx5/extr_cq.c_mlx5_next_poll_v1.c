
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_cq_ex {int dummy; } ;


 int mlx5_next_poll (struct ibv_cq_ex*,int ,int) ;

__attribute__((used)) static inline int mlx5_next_poll_v1(struct ibv_cq_ex *ibcq)
{
 return mlx5_next_poll(ibcq, 0, 1);
}
