
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * group; TYPE_1__* meth; } ;
struct TYPE_7__ {scalar_t__ (* set_group ) (TYPE_2__*,int *) ;} ;
typedef TYPE_2__ EC_KEY ;


 int * EC_GROUP_new_by_curve_name (int) ;
 int EC_KEY_free (TYPE_2__*) ;
 TYPE_2__* EC_KEY_new () ;
 scalar_t__ stub1 (TYPE_2__*,int *) ;

EC_KEY *EC_KEY_new_by_curve_name(int nid)
{
    EC_KEY *ret = EC_KEY_new();
    if (ret == ((void*)0))
        return ((void*)0);
    ret->group = EC_GROUP_new_by_curve_name(nid);
    if (ret->group == ((void*)0)) {
        EC_KEY_free(ret);
        return ((void*)0);
    }
    if (ret->meth->set_group != ((void*)0)
        && ret->meth->set_group(ret, ret->group) == 0) {
        EC_KEY_free(ret);
        return ((void*)0);
    }
    return ret;
}
