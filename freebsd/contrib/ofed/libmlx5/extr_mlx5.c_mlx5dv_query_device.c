
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mlx5dv_context {int comp_mask; int cqe_comp_caps; int flags; scalar_t__ version; } ;
struct mlx5_context {scalar_t__ cqe_version; int vendor_cap_flags; int cqe_comp_caps; } ;
struct ibv_context {int dummy; } ;


 int MLX5DV_CONTEXT_FLAGS_CQE_V1 ;
 int MLX5DV_CONTEXT_FLAGS_MPW ;
 int MLX5DV_CONTEXT_MASK_CQE_COMPRESION ;
 scalar_t__ MLX5_CQE_VERSION_V1 ;
 int MLX5_VENDOR_CAP_FLAGS_MPW ;
 struct mlx5_context* to_mctx (struct ibv_context*) ;

int mlx5dv_query_device(struct ibv_context *ctx_in,
    struct mlx5dv_context *attrs_out)
{
 struct mlx5_context *mctx = to_mctx(ctx_in);
 uint64_t comp_mask_out = 0;

 attrs_out->version = 0;
 attrs_out->flags = 0;

 if (mctx->cqe_version == MLX5_CQE_VERSION_V1)
  attrs_out->flags |= MLX5DV_CONTEXT_FLAGS_CQE_V1;

 if (mctx->vendor_cap_flags & MLX5_VENDOR_CAP_FLAGS_MPW)
  attrs_out->flags |= MLX5DV_CONTEXT_FLAGS_MPW;

 if (attrs_out->comp_mask & MLX5DV_CONTEXT_MASK_CQE_COMPRESION) {
  attrs_out->cqe_comp_caps = mctx->cqe_comp_caps;
  comp_mask_out |= MLX5DV_CONTEXT_MASK_CQE_COMPRESION;
 }

 attrs_out->comp_mask = comp_mask_out;

 return 0;
}
