
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* v; } ;
typedef TYPE_1__ shortsc25519 ;
struct TYPE_6__ {scalar_t__* v; } ;
typedef TYPE_2__ sc25519 ;



void sc25519_from_shortsc(sc25519 *r, const shortsc25519 *x)
{
  int i;
  for(i=0;i<16;i++)
    r->v[i] = x->v[i];
  for(i=0;i<16;i++)
    r->v[16+i] = 0;
}
