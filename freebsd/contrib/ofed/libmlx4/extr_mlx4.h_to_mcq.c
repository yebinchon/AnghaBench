
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_cq {int dummy; } ;
struct ibv_cq {int dummy; } ;


 int cq ;
 struct mlx4_cq* to_mxxx (int ,int ) ;

__attribute__((used)) static inline struct mlx4_cq *to_mcq(struct ibv_cq *ibcq)
{
 return to_mxxx(cq, cq);
}
