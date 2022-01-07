
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* pniels_t ;
typedef int gf ;
typedef TYPE_2__* curve448_point_t ;
struct TYPE_7__ {int z; } ;
struct TYPE_6__ {int n; int z; } ;


 int gf_copy (int ,int ) ;
 int gf_mul (int ,int ,int ) ;
 int sub_niels_from_pt (TYPE_2__*,int ,int) ;

__attribute__((used)) static void sub_pniels_from_pt(curve448_point_t p, const pniels_t pn,
                               int before_double)
{
    gf L0;

    gf_mul(L0, p->z, pn->z);
    gf_copy(p->z, L0);
    sub_niels_from_pt(p, pn->n, before_double);
}
