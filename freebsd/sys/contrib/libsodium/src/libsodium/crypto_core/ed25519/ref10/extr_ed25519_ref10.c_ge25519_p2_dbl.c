
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Y; int X; int Z; } ;
typedef TYPE_1__ ge25519_p2 ;
struct TYPE_6__ {int Z; int T; int Y; int X; } ;
typedef TYPE_2__ ge25519_p1p1 ;
typedef int fe25519 ;


 int fe25519_add (int ,int ,int ) ;
 int fe25519_sq (int ,int ) ;
 int fe25519_sq2 (int ,int ) ;
 int fe25519_sub (int ,int ,int ) ;

__attribute__((used)) static void
ge25519_p2_dbl(ge25519_p1p1 *r, const ge25519_p2 *p)
{
    fe25519 t0;

    fe25519_sq(r->X, p->X);
    fe25519_sq(r->Z, p->Y);
    fe25519_sq2(r->T, p->Z);
    fe25519_add(r->Y, p->X, p->Y);
    fe25519_sq(t0, r->Y);
    fe25519_add(r->Y, r->Z, r->X);
    fe25519_sub(r->Z, r->Z, r->X);
    fe25519_sub(r->X, t0, r->Y);
    fe25519_sub(r->T, r->T, r->Z);
}
