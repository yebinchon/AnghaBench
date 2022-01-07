
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_cq_ex {int dummy; } ;


 int POLLING_MODE_STALL_ADAPTIVE ;
 int mlx5_next_poll (struct ibv_cq_ex*,int ,int ) ;

__attribute__((used)) static inline int mlx5_next_poll_adaptive_v0(struct ibv_cq_ex *ibcq)
{
 return mlx5_next_poll(ibcq, POLLING_MODE_STALL_ADAPTIVE, 0);
}
