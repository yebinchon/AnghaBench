
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_srq {int dummy; } ;
struct mlx5_resource {int dummy; } ;
struct mlx5_cqe64 {int dummy; } ;
struct mlx5_cq {int dummy; } ;
struct ibv_wc {int dummy; } ;


 int CQ_EMPTY ;
 int mlx5_get_next_cqe (struct mlx5_cq*,struct mlx5_cqe64**,void**) ;
 int mlx5_parse_cqe (struct mlx5_cq*,struct mlx5_cqe64*,void*,struct mlx5_resource**,struct mlx5_srq**,struct ibv_wc*,int,int ) ;

__attribute__((used)) static inline int mlx5_poll_one(struct mlx5_cq *cq,
    struct mlx5_resource **cur_rsc,
    struct mlx5_srq **cur_srq,
    struct ibv_wc *wc, int cqe_ver)
{
 struct mlx5_cqe64 *cqe64;
 void *cqe;
 int err;

 err = mlx5_get_next_cqe(cq, &cqe64, &cqe);
 if (err == CQ_EMPTY)
  return err;

 return mlx5_parse_cqe(cq, cqe64, cqe, cur_rsc, cur_srq, wc, cqe_ver, 0);
}
