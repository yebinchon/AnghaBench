
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_cq_ex {int dummy; } ;


 int POLLING_MODE_STALL_ADAPTIVE ;
 int _mlx5_end_poll (struct ibv_cq_ex*,int ,int ) ;

__attribute__((used)) static inline void mlx5_end_poll_adaptive_stall(struct ibv_cq_ex *ibcq)
{
 _mlx5_end_poll(ibcq, 0, POLLING_MODE_STALL_ADAPTIVE);
}
