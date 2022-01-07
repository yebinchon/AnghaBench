
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int t; } ;
typedef TYPE_1__ ge25519_p3 ;
typedef int ge25519_p2 ;
struct TYPE_7__ {int y; int x; } ;
typedef TYPE_2__ ge25519_p1p1 ;


 int fe25519_mul (int *,int *,int *) ;
 int p1p1_to_p2 (int *,TYPE_2__ const*) ;

__attribute__((used)) static void p1p1_to_p3(ge25519_p3 *r, const ge25519_p1p1 *p)
{
  p1p1_to_p2((ge25519_p2 *)r, p);
  fe25519_mul(&r->t, &p->x, &p->y);
}
