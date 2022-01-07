
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int shortsc25519 ;
typedef int sc25519 ;


 int sc25519_from_shortsc (int *,int const*) ;
 int sc25519_mul (int *,int const*,int *) ;

void sc25519_mul_shortsc(sc25519 *r, const sc25519 *x, const shortsc25519 *y)
{
  sc25519 t;
  sc25519_from_shortsc(&t, y);
  sc25519_mul(r, x, &t);
}
