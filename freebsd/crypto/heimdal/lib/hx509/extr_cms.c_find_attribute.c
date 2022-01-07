
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int heim_oid ;
struct TYPE_6__ {int type; } ;
struct TYPE_5__ {size_t len; TYPE_2__ const* val; } ;
typedef TYPE_1__ CMSAttributes ;
typedef TYPE_2__ Attribute ;


 scalar_t__ der_heim_oid_cmp (int *,int const*) ;

__attribute__((used)) static const Attribute *
find_attribute(const CMSAttributes *attr, const heim_oid *oid)
{
    size_t i;
    for (i = 0; i < attr->len; i++)
 if (der_heim_oid_cmp(&attr->val[i].type, oid) == 0)
     return &attr->val[i];
    return ((void*)0);
}
