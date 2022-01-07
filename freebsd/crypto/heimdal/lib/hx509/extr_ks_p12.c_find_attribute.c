
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int heim_oid ;
struct TYPE_6__ {int attrId; } ;
struct TYPE_5__ {size_t len; TYPE_2__ const* val; } ;
typedef TYPE_1__ PKCS12_Attributes ;
typedef TYPE_2__ PKCS12_Attribute ;


 scalar_t__ der_heim_oid_cmp (int const*,int *) ;

__attribute__((used)) static const PKCS12_Attribute *
find_attribute(const PKCS12_Attributes *attrs, const heim_oid *oid)
{
    size_t i;
    if (attrs == ((void*)0))
 return ((void*)0);
    for (i = 0; i < attrs->len; i++)
 if (der_heim_oid_cmp(oid, &attrs->val[i].attrId) == 0)
     return &attrs->val[i];
    return ((void*)0);
}
