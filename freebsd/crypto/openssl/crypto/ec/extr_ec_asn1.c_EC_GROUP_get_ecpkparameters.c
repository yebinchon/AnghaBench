
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * parameters; int * named_curve; } ;
struct TYPE_8__ {int type; TYPE_1__ value; } ;
typedef int EC_GROUP ;
typedef TYPE_2__ ECPKPARAMETERS ;


 int ASN1_OBJECT_free (int *) ;
 int ECPARAMETERS_free (int *) ;
 int ECPKPARAMETERS_free (TYPE_2__*) ;
 TYPE_2__* ECPKPARAMETERS_new () ;
 int EC_F_EC_GROUP_GET_ECPKPARAMETERS ;
 scalar_t__ EC_GROUP_get_asn1_flag (int const*) ;
 int EC_GROUP_get_curve_name (int const*) ;
 int * EC_GROUP_get_ecparameters (int const*,int *) ;
 int ECerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int * OBJ_nid2obj (int) ;

ECPKPARAMETERS *EC_GROUP_get_ecpkparameters(const EC_GROUP *group,
                                            ECPKPARAMETERS *params)
{
    int ok = 1, tmp;
    ECPKPARAMETERS *ret = params;

    if (ret == ((void*)0)) {
        if ((ret = ECPKPARAMETERS_new()) == ((void*)0)) {
            ECerr(EC_F_EC_GROUP_GET_ECPKPARAMETERS, ERR_R_MALLOC_FAILURE);
            return ((void*)0);
        }
    } else {
        if (ret->type == 0)
            ASN1_OBJECT_free(ret->value.named_curve);
        else if (ret->type == 1 && ret->value.parameters)
            ECPARAMETERS_free(ret->value.parameters);
    }

    if (EC_GROUP_get_asn1_flag(group)) {



        tmp = EC_GROUP_get_curve_name(group);
        if (tmp) {
            ret->type = 0;
            if ((ret->value.named_curve = OBJ_nid2obj(tmp)) == ((void*)0))
                ok = 0;
        } else

            ok = 0;
    } else {

        ret->type = 1;
        if ((ret->value.parameters =
             EC_GROUP_get_ecparameters(group, ((void*)0))) == ((void*)0))
            ok = 0;
    }

    if (!ok) {
        ECPKPARAMETERS_free(ret);
        return ((void*)0);
    }
    return ret;
}
