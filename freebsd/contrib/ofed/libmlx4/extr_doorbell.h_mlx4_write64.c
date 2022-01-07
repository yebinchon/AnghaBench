
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mlx4_context {scalar_t__ uar; } ;


 int MLX4_PAIR_TO_64 (int *) ;
 int mmio_writeq (unsigned long,int ) ;

__attribute__((used)) static inline void mlx4_write64(uint32_t val[2], struct mlx4_context *ctx, int offset)
{
 mmio_writeq((unsigned long)(ctx->uar + offset), MLX4_PAIR_TO_64(val));
}
