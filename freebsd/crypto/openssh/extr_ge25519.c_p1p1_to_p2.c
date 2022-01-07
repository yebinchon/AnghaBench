
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int z; int y; int x; } ;
typedef TYPE_1__ ge25519_p2 ;
struct TYPE_6__ {int t; int z; int y; int x; } ;
typedef TYPE_2__ ge25519_p1p1 ;


 int fe25519_mul (int *,int *,int *) ;

__attribute__((used)) static void p1p1_to_p2(ge25519_p2 *r, const ge25519_p1p1 *p)
{
  fe25519_mul(&r->x, &p->x, &p->t);
  fe25519_mul(&r->y, &p->y, &p->z);
  fe25519_mul(&r->z, &p->z, &p->t);
}
