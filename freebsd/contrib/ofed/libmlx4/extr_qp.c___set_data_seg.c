
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_wqe_data_seg {int addr; void* lkey; void* byte_count; } ;
struct ibv_sge {int addr; int lkey; int length; } ;


 void* htobe32 (int ) ;
 int htobe64 (int ) ;

__attribute__((used)) static void __set_data_seg(struct mlx4_wqe_data_seg *dseg, struct ibv_sge *sg)
{
 dseg->byte_count = htobe32(sg->length);
 dseg->lkey = htobe32(sg->lkey);
 dseg->addr = htobe64(sg->addr);
}
