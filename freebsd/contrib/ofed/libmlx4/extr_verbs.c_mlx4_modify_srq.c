
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_srq_attr {int dummy; } ;
struct ibv_srq {int dummy; } ;
struct ibv_modify_srq {int dummy; } ;


 int ibv_cmd_modify_srq (struct ibv_srq*,struct ibv_srq_attr*,int,struct ibv_modify_srq*,int) ;

int mlx4_modify_srq(struct ibv_srq *srq,
       struct ibv_srq_attr *attr,
       int attr_mask)
{
 struct ibv_modify_srq cmd;

 return ibv_cmd_modify_srq(srq, attr, attr_mask, &cmd, sizeof cmd);
}
