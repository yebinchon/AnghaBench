
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int x; int t; int z; } ;
typedef TYPE_1__ ge25519_p3 ;
typedef int fe25519 ;


 int fe25519_add (int *,int *,int *) ;
 int fe25519_getparity (int *) ;
 int fe25519_iseq_vartime (int *,int *) ;
 int fe25519_mul (int *,int *,int *) ;
 int fe25519_neg (int *,int *) ;
 int fe25519_pow2523 (int *,int *) ;
 int fe25519_setone (int *) ;
 int fe25519_square (int *,int *) ;
 int fe25519_sub (int *,int *,int *) ;
 int fe25519_unpack (int *,unsigned char const*) ;
 int ge25519_ecd ;
 int ge25519_sqrtm1 ;

int ge25519_unpackneg_vartime(ge25519_p3 *r, const unsigned char p[32])
{
  unsigned char par;
  fe25519 t, chk, num, den, den2, den4, den6;
  fe25519_setone(&r->z);
  par = p[31] >> 7;
  fe25519_unpack(&r->y, p);
  fe25519_square(&num, &r->y);
  fe25519_mul(&den, &num, &ge25519_ecd);
  fe25519_sub(&num, &num, &r->z);
  fe25519_add(&den, &r->z, &den);



  fe25519_square(&den2, &den);
  fe25519_square(&den4, &den2);
  fe25519_mul(&den6, &den4, &den2);
  fe25519_mul(&t, &den6, &num);
  fe25519_mul(&t, &t, &den);

  fe25519_pow2523(&t, &t);

  fe25519_mul(&t, &t, &num);
  fe25519_mul(&t, &t, &den);
  fe25519_mul(&t, &t, &den);
  fe25519_mul(&r->x, &t, &den);


  fe25519_square(&chk, &r->x);
  fe25519_mul(&chk, &chk, &den);
  if (!fe25519_iseq_vartime(&chk, &num))
    fe25519_mul(&r->x, &r->x, &ge25519_sqrtm1);


  fe25519_square(&chk, &r->x);
  fe25519_mul(&chk, &chk, &den);
  if (!fe25519_iseq_vartime(&chk, &num))
    return -1;


  if(fe25519_getparity(&r->x) != (1-par))
    fe25519_neg(&r->x, &r->x);

  fe25519_mul(&r->t, &r->x, &r->y);
  return 0;
}
