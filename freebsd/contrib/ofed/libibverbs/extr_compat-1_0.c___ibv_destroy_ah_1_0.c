
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_ah_1_0 {int real_ah; } ;


 int free (struct ibv_ah_1_0*) ;
 int ibv_destroy_ah (int ) ;

int __ibv_destroy_ah_1_0(struct ibv_ah_1_0 *ah)
{
 int ret;

 ret = ibv_destroy_ah(ah->real_ah);
 if (ret)
  return ret;

 free(ah);
 return 0;
}
