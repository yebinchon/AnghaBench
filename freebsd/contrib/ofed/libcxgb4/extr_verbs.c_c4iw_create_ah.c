
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_pd {int dummy; } ;
struct ibv_ah_attr {int dummy; } ;
struct ibv_ah {int dummy; } ;



struct ibv_ah *c4iw_create_ah(struct ibv_pd *pd, struct ibv_ah_attr *attr)
{
 return ((void*)0);
}
