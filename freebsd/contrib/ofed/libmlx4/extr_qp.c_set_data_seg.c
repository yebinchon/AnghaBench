
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_wqe_data_seg {void* byte_count; int addr; void* lkey; } ;
struct ibv_sge {int lkey; int length; int addr; } ;


 void* htobe32 (int) ;
 int htobe64 (int ) ;
 scalar_t__ likely (int) ;
 int udma_to_device_barrier () ;

__attribute__((used)) static void set_data_seg(struct mlx4_wqe_data_seg *dseg, struct ibv_sge *sg)
{
 dseg->lkey = htobe32(sg->lkey);
 dseg->addr = htobe64(sg->addr);
 udma_to_device_barrier();

 if (likely(sg->length))
  dseg->byte_count = htobe32(sg->length);
 else
  dseg->byte_count = htobe32(0x80000000);
}
