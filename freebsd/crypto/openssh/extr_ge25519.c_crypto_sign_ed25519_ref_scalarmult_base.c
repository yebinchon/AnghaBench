
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sc25519 ;
struct TYPE_4__ {int y; int x; int t; int z; } ;
typedef TYPE_1__ ge25519_p3 ;
typedef int ge25519_aff ;


 int choose_t (int *,unsigned long long,char) ;
 int fe25519_mul (int *,int *,int *) ;
 int fe25519_setone (int *) ;
 int ge25519_mixadd2 (TYPE_1__*,int *) ;
 int sc25519_window3 (char*,int const*) ;

void ge25519_scalarmult_base(ge25519_p3 *r, const sc25519 *s)
{
  signed char b[85];
  int i;
  ge25519_aff t;
  sc25519_window3(b,s);

  choose_t((ge25519_aff *)r, 0, b[0]);
  fe25519_setone(&r->z);
  fe25519_mul(&r->t, &r->x, &r->y);
  for(i=1;i<85;i++)
  {
    choose_t(&t, (unsigned long long) i, b[i]);
    ge25519_mixadd2(r, &t);
  }
}
