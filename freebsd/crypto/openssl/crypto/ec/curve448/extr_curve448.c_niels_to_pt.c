
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* niels_t ;
typedef TYPE_2__* curve448_point_t ;
struct TYPE_6__ {int z; int x; int y; int t; } ;
struct TYPE_5__ {int a; int b; } ;


 int ONE ;
 int gf_add (int ,int ,int ) ;
 int gf_copy (int ,int ) ;
 int gf_mul (int ,int ,int ) ;
 int gf_sub (int ,int ,int ) ;

__attribute__((used)) static void niels_to_pt(curve448_point_t e, const niels_t n)
{
    gf_add(e->y, n->b, n->a);
    gf_sub(e->x, n->b, n->a);
    gf_mul(e->t, e->y, e->x);
    gf_copy(e->z, ONE);
}
