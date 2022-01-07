
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ ASN1_INTEGER ;


 long ASN1_INTEGER_get (TYPE_1__*) ;
 scalar_t__ V_ASN1_NEG_INTEGER ;

__attribute__((used)) static int policy_cache_set_int(long *out, ASN1_INTEGER *value)
{
    if (value == ((void*)0))
        return 1;
    if (value->type == V_ASN1_NEG_INTEGER)
        return 0;
    *out = ASN1_INTEGER_get(value);
    return 1;
}
