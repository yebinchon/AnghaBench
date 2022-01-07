
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ikev2_prf_alg {int id; } ;


 size_t NUM_PRF_ALGS ;
 struct ikev2_prf_alg const* ikev2_prf_algs ;

const struct ikev2_prf_alg * ikev2_get_prf(int id)
{
 size_t i;

 for (i = 0; i < NUM_PRF_ALGS; i++) {
  if (ikev2_prf_algs[i].id == id)
   return &ikev2_prf_algs[i];
 }

 return ((void*)0);
}
