
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_srq_attr {int dummy; } ;
struct ibv_srq {int dummy; } ;
struct ibv_query_srq {int dummy; } ;


 int ibv_cmd_query_srq (struct ibv_srq*,struct ibv_srq_attr*,struct ibv_query_srq*,int) ;

int mlx5_query_srq(struct ibv_srq *srq,
      struct ibv_srq_attr *attr)
{
 struct ibv_query_srq cmd;

 return ibv_cmd_query_srq(srq, attr, &cmd, sizeof cmd);
}
