
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct mlx5_context {int uidx_table_mutex; TYPE_1__* uidx_table; } ;
struct TYPE_2__ {int ** table; int refcnt; } ;


 size_t MLX5_UIDX_TABLE_MASK ;
 size_t MLX5_UIDX_TABLE_SHIFT ;
 int free (int **) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void mlx5_clear_uidx(struct mlx5_context *ctx, uint32_t uidx)
{
 int tind = uidx >> MLX5_UIDX_TABLE_SHIFT;

 pthread_mutex_lock(&ctx->uidx_table_mutex);

 if (!--ctx->uidx_table[tind].refcnt)
  free(ctx->uidx_table[tind].table);
 else
  ctx->uidx_table[tind].table[uidx & MLX5_UIDX_TABLE_MASK] = ((void*)0);

 pthread_mutex_unlock(&ctx->uidx_table_mutex);
}
