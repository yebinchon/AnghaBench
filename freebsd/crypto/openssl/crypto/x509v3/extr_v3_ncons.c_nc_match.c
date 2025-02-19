
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_11__ {scalar_t__ type; } ;
struct TYPE_10__ {TYPE_6__* base; scalar_t__ maximum; scalar_t__ minimum; } ;
struct TYPE_9__ {int excludedSubtrees; int permittedSubtrees; } ;
typedef TYPE_1__ NAME_CONSTRAINTS ;
typedef TYPE_2__ GENERAL_SUBTREE ;
typedef TYPE_3__ GENERAL_NAME ;


 int X509_V_ERR_EXCLUDED_VIOLATION ;
 int X509_V_ERR_PERMITTED_VIOLATION ;
 int X509_V_ERR_SUBTREE_MINMAX ;
 int X509_V_OK ;
 int nc_match_single (TYPE_3__*,TYPE_6__*) ;
 int sk_GENERAL_SUBTREE_num (int ) ;
 TYPE_2__* sk_GENERAL_SUBTREE_value (int ,int) ;

__attribute__((used)) static int nc_match(GENERAL_NAME *gen, NAME_CONSTRAINTS *nc)
{
    GENERAL_SUBTREE *sub;
    int i, r, match = 0;






    for (i = 0; i < sk_GENERAL_SUBTREE_num(nc->permittedSubtrees); i++) {
        sub = sk_GENERAL_SUBTREE_value(nc->permittedSubtrees, i);
        if (gen->type != sub->base->type)
            continue;
        if (sub->minimum || sub->maximum)
            return X509_V_ERR_SUBTREE_MINMAX;

        if (match == 2)
            continue;
        if (match == 0)
            match = 1;
        r = nc_match_single(gen, sub->base);
        if (r == X509_V_OK)
            match = 2;
        else if (r != X509_V_ERR_PERMITTED_VIOLATION)
            return r;
    }

    if (match == 1)
        return X509_V_ERR_PERMITTED_VIOLATION;



    for (i = 0; i < sk_GENERAL_SUBTREE_num(nc->excludedSubtrees); i++) {
        sub = sk_GENERAL_SUBTREE_value(nc->excludedSubtrees, i);
        if (gen->type != sub->base->type)
            continue;
        if (sub->minimum || sub->maximum)
            return X509_V_ERR_SUBTREE_MINMAX;

        r = nc_match_single(gen, sub->base);
        if (r == X509_V_OK)
            return X509_V_ERR_EXCLUDED_VIOLATION;
        else if (r != X509_V_ERR_PERMITTED_VIOLATION)
            return r;

    }

    return X509_V_OK;

}
