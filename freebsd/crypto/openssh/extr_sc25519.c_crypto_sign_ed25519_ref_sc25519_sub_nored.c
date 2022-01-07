
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* v; } ;
typedef TYPE_1__ sc25519 ;
typedef int crypto_uint32 ;



void sc25519_sub_nored(sc25519 *r, const sc25519 *x, const sc25519 *y)
{
  crypto_uint32 b = 0;
  crypto_uint32 t;
  int i;
  for(i=0;i<32;i++)
  {
    t = x->v[i] - y->v[i] - b;
    r->v[i] = t & 255;
    b = (t >> 8) & 1;
  }
}
