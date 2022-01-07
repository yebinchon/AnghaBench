
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * policy_id; } ;
typedef TYPE_1__ TS_REQ ;
typedef int ASN1_OBJECT ;



ASN1_OBJECT *TS_REQ_get_policy_id(TS_REQ *a)
{
    return a->policy_id;
}
