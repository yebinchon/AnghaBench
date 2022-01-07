
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int T; int Z; int X; int Y; } ;
typedef TYPE_1__ ge_p3 ;
struct TYPE_6__ {int T2d; int Z; int YminusX; int YplusX; } ;
typedef TYPE_2__ ge_cached ;


 int d2 ;
 int fe_add (int ,int ,int ) ;
 int fe_copy (int ,int ) ;
 int fe_mul (int ,int ,int ) ;
 int fe_sub (int ,int ,int ) ;

__attribute__((used)) static void ge_p3_to_cached(ge_cached *r, const ge_p3 *p)
{
    fe_add(r->YplusX, p->Y, p->X);
    fe_sub(r->YminusX, p->Y, p->X);
    fe_copy(r->Z, p->Z);
    fe_mul(r->T2d, p->T, d2);
}
