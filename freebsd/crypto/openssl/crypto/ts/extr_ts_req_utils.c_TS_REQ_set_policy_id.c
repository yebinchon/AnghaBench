
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* policy_id; } ;
typedef TYPE_1__ TS_REQ ;
typedef int const ASN1_OBJECT ;


 int ASN1_OBJECT_free (int const*) ;
 int ERR_R_MALLOC_FAILURE ;
 int const* OBJ_dup (int const*) ;
 int TS_F_TS_REQ_SET_POLICY_ID ;
 int TSerr (int ,int ) ;

int TS_REQ_set_policy_id(TS_REQ *a, const ASN1_OBJECT *policy)
{
    ASN1_OBJECT *new_policy;

    if (a->policy_id == policy)
        return 1;
    new_policy = OBJ_dup(policy);
    if (new_policy == ((void*)0)) {
        TSerr(TS_F_TS_REQ_SET_POLICY_ID, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    ASN1_OBJECT_free(a->policy_id);
    a->policy_id = new_policy;
    return 1;
}
