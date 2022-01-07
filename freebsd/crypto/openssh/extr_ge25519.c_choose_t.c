
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int x; } ;
typedef TYPE_1__ ge25519_aff ;
typedef int fe25519 ;


 int cmov_aff (TYPE_1__*,TYPE_1__*,int) ;
 int equal (char,int) ;
 int fe25519_cmov (int *,int *,int ) ;
 int fe25519_neg (int *,int *) ;
 TYPE_1__* ge25519_base_multiples_affine ;
 int negative (char) ;

__attribute__((used)) static void choose_t(ge25519_aff *t, unsigned long long pos, signed char b)
{

  fe25519 v;
  *t = ge25519_base_multiples_affine[5*pos+0];
  cmov_aff(t, &ge25519_base_multiples_affine[5*pos+1],equal(b,1) | equal(b,-1));
  cmov_aff(t, &ge25519_base_multiples_affine[5*pos+2],equal(b,2) | equal(b,-2));
  cmov_aff(t, &ge25519_base_multiples_affine[5*pos+3],equal(b,3) | equal(b,-3));
  cmov_aff(t, &ge25519_base_multiples_affine[5*pos+4],equal(b,-4));
  fe25519_neg(&v, &t->x);
  fe25519_cmov(&t->x, &v, negative(b));
}
