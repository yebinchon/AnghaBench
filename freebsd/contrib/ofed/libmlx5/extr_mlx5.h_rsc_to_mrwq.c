
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_rwq {int dummy; } ;
struct mlx5_resource {int dummy; } ;



__attribute__((used)) static inline struct mlx5_rwq *rsc_to_mrwq(struct mlx5_resource *rsc)
{
 return (struct mlx5_rwq *)rsc;
}
