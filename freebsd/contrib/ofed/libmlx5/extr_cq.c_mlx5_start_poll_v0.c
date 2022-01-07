
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_poll_cq_attr {int dummy; } ;
struct ibv_cq_ex {int dummy; } ;


 int mlx5_start_poll (struct ibv_cq_ex*,struct ibv_poll_cq_attr*,int ,int ,int ) ;

__attribute__((used)) static inline int mlx5_start_poll_v0(struct ibv_cq_ex *ibcq,
         struct ibv_poll_cq_attr *attr)
{
 return mlx5_start_poll(ibcq, attr, 0, 0, 0);
}
