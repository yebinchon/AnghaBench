
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ah {int dummy; } ;
struct ibv_ah {int dummy; } ;


 int ah ;
 struct mlx5_ah* to_mxxx (int ,int ) ;

__attribute__((used)) static inline struct mlx5_ah *to_mah(struct ibv_ah *ibah)
{
 return to_mxxx(ah, ah);
}
