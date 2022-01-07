
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct verbs_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ offset; } ;
struct mlx5_context {TYPE_1__ core_clock; scalar_t__ hca_core_clock; scalar_t__* uar; int bfs; } ;
struct ibv_context {int device; } ;
struct TYPE_4__ {int page_size; } ;


 int MLX5_MAX_UARS ;
 int close_debug_file (struct mlx5_context*) ;
 int free (int ) ;
 int munmap (scalar_t__,int) ;
 struct mlx5_context* to_mctx (struct ibv_context*) ;
 TYPE_2__* to_mdev (int ) ;

__attribute__((used)) static void mlx5_cleanup_context(struct verbs_device *device,
     struct ibv_context *ibctx)
{
 struct mlx5_context *context = to_mctx(ibctx);
 int page_size = to_mdev(ibctx->device)->page_size;
 int i;

 free(context->bfs);
 for (i = 0; i < MLX5_MAX_UARS; ++i) {
  if (context->uar[i])
   munmap(context->uar[i], page_size);
 }
 if (context->hca_core_clock)
  munmap(context->hca_core_clock - context->core_clock.offset,
         page_size);
 close_debug_file(context);
}
