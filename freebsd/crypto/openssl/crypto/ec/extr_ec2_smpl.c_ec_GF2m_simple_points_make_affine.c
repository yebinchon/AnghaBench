
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int (* make_affine ) (TYPE_2__ const*,int *,int *) ;} ;
typedef int EC_POINT ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;


 int stub1 (TYPE_2__ const*,int *,int *) ;

int ec_GF2m_simple_points_make_affine(const EC_GROUP *group, size_t num,
                                      EC_POINT *points[], BN_CTX *ctx)
{
    size_t i;

    for (i = 0; i < num; i++) {
        if (!group->meth->make_affine(group, points[i], ctx))
            return 0;
    }

    return 1;
}
