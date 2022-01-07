
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ikev2_encr_alg {int id; } ;


 size_t NUM_ENCR_ALGS ;
 struct ikev2_encr_alg const* ikev2_encr_algs ;

const struct ikev2_encr_alg * ikev2_get_encr(int id)
{
 size_t i;

 for (i = 0; i < NUM_ENCR_ALGS; i++) {
  if (ikev2_encr_algs[i].id == id)
   return &ikev2_encr_algs[i];
 }

 return ((void*)0);
}
