
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int xy2d; int yminusx; int yplusx; } ;
typedef TYPE_1__ ge25519_precomp ;
struct TYPE_6__ {int Y; int X; int Z; } ;
typedef TYPE_2__ ge25519_p3 ;
typedef int fe25519 ;


 int d2 ;
 int fe25519_add (int ,int ,int ) ;
 int fe25519_invert (int ,int ) ;
 int fe25519_mul (int ,int ,int ) ;
 int fe25519_sub (int ,int ,int ) ;

__attribute__((used)) static void
ge25519_p3_to_precomp(ge25519_precomp *pi, const ge25519_p3 *p)
{
    fe25519 recip;
    fe25519 x;
    fe25519 y;
    fe25519 xy;

    fe25519_invert(recip, p->Z);
    fe25519_mul(x, p->X, recip);
    fe25519_mul(y, p->Y, recip);
    fe25519_add(pi->yplusx, y, x);
    fe25519_sub(pi->yminusx, y, x);
    fe25519_mul(xy, x, y);
    fe25519_mul(pi->xy2d, xy, d2);
}
