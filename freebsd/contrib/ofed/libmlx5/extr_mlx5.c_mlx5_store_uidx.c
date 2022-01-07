
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_resource {int dummy; } ;
struct mlx5_context {int uidx_table_mutex; TYPE_1__* uidx_table; } ;
typedef size_t int32_t ;
struct TYPE_2__ {void** table; int refcnt; } ;


 int MLX5_UIDX_TABLE_MASK ;
 size_t MLX5_UIDX_TABLE_SHIFT ;
 void** calloc (int,int) ;
 size_t get_free_uidx (struct mlx5_context*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int32_t mlx5_store_uidx(struct mlx5_context *ctx, void *rsc)
{
 int32_t tind;
 int32_t ret = -1;
 int32_t uidx;

 pthread_mutex_lock(&ctx->uidx_table_mutex);
 uidx = get_free_uidx(ctx);
 if (uidx < 0)
  goto out;

 tind = uidx >> MLX5_UIDX_TABLE_SHIFT;

 if (!ctx->uidx_table[tind].refcnt) {
  ctx->uidx_table[tind].table = calloc(MLX5_UIDX_TABLE_MASK + 1,
           sizeof(struct mlx5_resource *));
  if (!ctx->uidx_table[tind].table)
   goto out;
 }

 ++ctx->uidx_table[tind].refcnt;
 ctx->uidx_table[tind].table[uidx & MLX5_UIDX_TABLE_MASK] = rsc;
 ret = uidx;

out:
 pthread_mutex_unlock(&ctx->uidx_table_mutex);
 return ret;
}
