
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct mlx5_context {TYPE_1__* uidx_table; } ;
struct TYPE_2__ {void** table; int refcnt; } ;


 size_t MLX5_UIDX_TABLE_MASK ;
 size_t MLX5_UIDX_TABLE_SHIFT ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static inline void *mlx5_find_uidx(struct mlx5_context *ctx, uint32_t uidx)
{
 int tind = uidx >> MLX5_UIDX_TABLE_SHIFT;

 if (likely(ctx->uidx_table[tind].refcnt))
  return ctx->uidx_table[tind].table[uidx & MLX5_UIDX_TABLE_MASK];

 return ((void*)0);
}
