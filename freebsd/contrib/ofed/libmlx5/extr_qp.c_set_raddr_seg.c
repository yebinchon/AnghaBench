
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct mlx5_wqe_raddr_seg {scalar_t__ reserved; int rkey; int raddr; } ;


 int htobe32 (int ) ;
 int htobe64 (int ) ;

__attribute__((used)) static inline void set_raddr_seg(struct mlx5_wqe_raddr_seg *rseg,
     uint64_t remote_addr, uint32_t rkey)
{
 rseg->raddr = htobe64(remote_addr);
 rseg->rkey = htobe32(rkey);
 rseg->reserved = 0;
}
