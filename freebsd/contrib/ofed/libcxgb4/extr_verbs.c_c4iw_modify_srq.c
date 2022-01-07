
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_srq_attr {int dummy; } ;
struct ibv_srq {int dummy; } ;


 int ENOSYS ;

int c4iw_modify_srq(struct ibv_srq *srq, struct ibv_srq_attr *attr,
      int attr_mask)
{
 return ENOSYS;
}
