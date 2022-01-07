
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ikev2_integ_alg {int id; } ;


 size_t NUM_INTEG_ALGS ;
 struct ikev2_integ_alg const* ikev2_integ_algs ;

const struct ikev2_integ_alg * ikev2_get_integ(int id)
{
 size_t i;

 for (i = 0; i < NUM_INTEG_ALGS; i++) {
  if (ikev2_integ_algs[i].id == id)
   return &ikev2_integ_algs[i];
 }

 return ((void*)0);
}
