
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mlx5_srq {scalar_t__ srqn; } ;
struct mlx5_context {int dummy; } ;


 int CQ_OK ;
 int CQ_POLL_ERR ;
 struct mlx5_srq* mlx5_find_srq (struct mlx5_context*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int get_srq_ctx(struct mlx5_context *mctx,
         struct mlx5_srq **cur_srq,
         uint32_t srqn)
{
 if (!*cur_srq || (srqn != (*cur_srq)->srqn)) {
  *cur_srq = mlx5_find_srq(mctx, srqn);
  if (unlikely(!*cur_srq))
   return CQ_POLL_ERR;
 }

 return CQ_OK;
}
