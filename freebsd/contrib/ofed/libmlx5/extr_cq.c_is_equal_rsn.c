
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mlx5_cqe64 {int sop_drop_qpn; } ;


 int be32toh (int ) ;

__attribute__((used)) static int is_equal_rsn(struct mlx5_cqe64 *cqe64, uint32_t rsn)
{
 return rsn == (be32toh(cqe64->sop_drop_qpn) & 0xffffff);
}
