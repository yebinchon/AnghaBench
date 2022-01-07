
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct verbs_device {int device; } ;
struct TYPE_3__ {scalar_t__ offset; } ;
struct mlx4_context {TYPE_1__ core_clock; scalar_t__ hca_core_clock; scalar_t__ bf_page; scalar_t__ uar; } ;
struct ibv_context {int dummy; } ;
struct TYPE_4__ {int page_size; } ;


 int munmap (scalar_t__,int ) ;
 struct mlx4_context* to_mctx (struct ibv_context*) ;
 TYPE_2__* to_mdev (int *) ;

__attribute__((used)) static void mlx4_uninit_context(struct verbs_device *v_device,
     struct ibv_context *ibv_ctx)
{
 struct mlx4_context *context = to_mctx(ibv_ctx);

 munmap(context->uar, to_mdev(&v_device->device)->page_size);
 if (context->bf_page)
  munmap(context->bf_page, to_mdev(&v_device->device)->page_size);
 if (context->hca_core_clock)
  munmap(context->hca_core_clock - context->core_clock.offset,
         to_mdev(&v_device->device)->page_size);
}
