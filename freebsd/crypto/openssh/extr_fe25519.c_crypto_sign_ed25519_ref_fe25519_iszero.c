
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * v; } ;
typedef TYPE_1__ fe25519 ;


 int equal (int ,int ) ;
 int fe25519_freeze (TYPE_1__*) ;

int fe25519_iszero(const fe25519 *x)
{
  int i;
  int r;
  fe25519 t = *x;
  fe25519_freeze(&t);
  r = equal(t.v[0],0);
  for(i=1;i<32;i++)
    r &= equal(t.v[i],0);
  return r;
}
