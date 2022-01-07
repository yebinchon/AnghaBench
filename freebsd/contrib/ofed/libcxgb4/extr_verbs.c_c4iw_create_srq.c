
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_srq_init_attr {int dummy; } ;
struct ibv_srq {int dummy; } ;
struct ibv_pd {int dummy; } ;



struct ibv_srq *c4iw_create_srq(struct ibv_pd *pd,
    struct ibv_srq_init_attr *attr)
{
 return ((void*)0);
}
