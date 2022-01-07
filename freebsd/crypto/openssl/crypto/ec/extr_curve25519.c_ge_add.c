
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int Z; int T; int X; int Y; } ;
typedef TYPE_1__ ge_p3 ;
struct TYPE_8__ {int T; int Z; int Y; int X; } ;
typedef TYPE_2__ ge_p1p1 ;
struct TYPE_9__ {int Z; int T2d; int YminusX; int YplusX; } ;
typedef TYPE_3__ ge_cached ;
typedef int fe ;


 int fe_add (int ,int ,int ) ;
 int fe_mul (int ,int ,int ) ;
 int fe_sub (int ,int ,int ) ;

__attribute__((used)) static void ge_add(ge_p1p1 *r, const ge_p3 *p, const ge_cached *q)
{
    fe t0;

    fe_add(r->X, p->Y, p->X);
    fe_sub(r->Y, p->Y, p->X);
    fe_mul(r->Z, r->X, q->YplusX);
    fe_mul(r->Y, r->Y, q->YminusX);
    fe_mul(r->T, q->T2d, p->T);
    fe_mul(r->X, p->Z, q->Z);
    fe_add(t0, r->X, r->X);
    fe_sub(r->X, r->Z, r->Y);
    fe_add(r->Y, r->Z, r->Y);
    fe_add(r->Z, t0, r->T);
    fe_sub(r->T, t0, r->T);
}
