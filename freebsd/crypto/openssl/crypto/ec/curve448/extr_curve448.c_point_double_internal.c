
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gf ;
typedef TYPE_1__* curve448_point_t ;
struct TYPE_4__ {int t; int y; int z; int x; } ;


 int GF_HEADROOM ;
 int gf_add_nr (int ,int ,int ) ;
 int gf_mul (int ,int ,int ) ;
 int gf_sqr (int ,int ) ;
 int gf_sub_nr (int ,int ,int ) ;
 int gf_subx_nr (int ,int ,int ,int) ;
 int gf_weak_reduce (int ) ;

__attribute__((used)) static void point_double_internal(curve448_point_t p, const curve448_point_t q,
                                  int before_double)
{
    gf a, b, c, d;

    gf_sqr(c, q->x);
    gf_sqr(a, q->y);
    gf_add_nr(d, c, a);
    gf_add_nr(p->t, q->y, q->x);
    gf_sqr(b, p->t);
    gf_subx_nr(b, b, d, 3);
    gf_sub_nr(p->t, a, c);
    gf_sqr(p->x, q->z);
    gf_add_nr(p->z, p->x, p->x);
    gf_subx_nr(a, p->z, p->t, 4);
    if (GF_HEADROOM == 5)
        gf_weak_reduce(a);
    gf_mul(p->x, a, b);
    gf_mul(p->z, p->t, a);
    gf_mul(p->y, p->t, d);
    if (!before_double)
        gf_mul(p->t, b, d);
}
