
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_wqe_data_seg {int addr; void* lkey; void* byte_count; } ;
struct ibv_sge {int addr; int lkey; } ;


 int MLX5_ATOMIC_SIZE ;
 void* htobe32 (int ) ;
 int htobe64 (int ) ;

__attribute__((used)) static void set_data_ptr_seg_atomic(struct mlx5_wqe_data_seg *dseg,
        struct ibv_sge *sg)
{
 dseg->byte_count = htobe32(MLX5_ATOMIC_SIZE);
 dseg->lkey = htobe32(sg->lkey);
 dseg->addr = htobe64(sg->addr);
}
