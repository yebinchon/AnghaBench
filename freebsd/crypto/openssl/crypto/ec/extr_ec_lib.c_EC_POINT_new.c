
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int curve_name; TYPE_1__* meth; } ;
struct TYPE_10__ {TYPE_1__* meth; int curve_name; } ;
struct TYPE_9__ {int (* point_init ) (TYPE_2__*) ;} ;
typedef TYPE_2__ EC_POINT ;
typedef TYPE_3__ EC_GROUP ;


 int EC_F_EC_POINT_NEW ;
 int ECerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ;
 int OPENSSL_free (TYPE_2__*) ;
 TYPE_2__* OPENSSL_zalloc (int) ;
 int stub1 (TYPE_2__*) ;

EC_POINT *EC_POINT_new(const EC_GROUP *group)
{
    EC_POINT *ret;

    if (group == ((void*)0)) {
        ECerr(EC_F_EC_POINT_NEW, ERR_R_PASSED_NULL_PARAMETER);
        return ((void*)0);
    }
    if (group->meth->point_init == ((void*)0)) {
        ECerr(EC_F_EC_POINT_NEW, ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return ((void*)0);
    }

    ret = OPENSSL_zalloc(sizeof(*ret));
    if (ret == ((void*)0)) {
        ECerr(EC_F_EC_POINT_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    ret->meth = group->meth;
    ret->curve_name = group->curve_name;

    if (!ret->meth->point_init(ret)) {
        OPENSSL_free(ret);
        return ((void*)0);
    }

    return ret;
}
