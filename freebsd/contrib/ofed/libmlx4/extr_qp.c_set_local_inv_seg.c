
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mlx4_wqe_local_inval_seg {scalar_t__* reserved3; scalar_t__ reserved2; scalar_t__ reserved1; int mem_key; } ;


 int htobe32 (int ) ;

__attribute__((used)) static inline void set_local_inv_seg(struct mlx4_wqe_local_inval_seg *iseg,
  uint32_t rkey)
{
 iseg->mem_key = htobe32(rkey);

 iseg->reserved1 = 0;
 iseg->reserved2 = 0;
 iseg->reserved3[0] = 0;
 iseg->reserved3[1] = 0;
}
