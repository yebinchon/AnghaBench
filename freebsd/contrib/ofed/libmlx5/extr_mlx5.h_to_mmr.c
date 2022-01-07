
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_mr {int dummy; } ;
struct ibv_mr {int dummy; } ;


 int mr ;
 struct mlx5_mr* to_mxxx (int ,int ) ;

__attribute__((used)) static inline struct mlx5_mr *to_mmr(struct ibv_mr *ibmr)
{
 return to_mxxx(mr, mr);
}
