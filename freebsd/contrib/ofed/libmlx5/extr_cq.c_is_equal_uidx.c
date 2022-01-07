
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mlx5_cqe64 {int srqn_uidx; } ;


 int be32toh (int ) ;

__attribute__((used)) static inline int is_equal_uidx(struct mlx5_cqe64 *cqe64, uint32_t uidx)
{
 return uidx == (be32toh(cqe64->srqn_uidx) & 0xffffff);
}
