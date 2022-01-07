
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_wqe_data_seg {int addr; void* lkey; void* byte_count; } ;
struct ibv_sge {scalar_t__ addr; scalar_t__ lkey; scalar_t__ length; } ;


 void* htobe32 (scalar_t__) ;
 int htobe64 (scalar_t__) ;

__attribute__((used)) static void set_data_ptr_seg(struct mlx5_wqe_data_seg *dseg, struct ibv_sge *sg,
        int offset)
{
 dseg->byte_count = htobe32(sg->length - offset);
 dseg->lkey = htobe32(sg->lkey);
 dseg->addr = htobe64(sg->addr + offset);
}
