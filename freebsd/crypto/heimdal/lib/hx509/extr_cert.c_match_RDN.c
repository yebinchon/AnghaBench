
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t len; TYPE_1__* val; } ;
struct TYPE_5__ {int value; int type; } ;
typedef TYPE_2__ RelativeDistinguishedName ;


 int HX509_NAME_CONSTRAINT_ERROR ;
 int _hx509_name_ds_cmp (int *,int *,int*) ;
 scalar_t__ der_heim_oid_cmp (int *,int *) ;

__attribute__((used)) static int
match_RDN(const RelativeDistinguishedName *c,
   const RelativeDistinguishedName *n)
{
    size_t i;

    if (c->len != n->len)
 return HX509_NAME_CONSTRAINT_ERROR;

    for (i = 0; i < n->len; i++) {
 int diff, ret;

 if (der_heim_oid_cmp(&c->val[i].type, &n->val[i].type) != 0)
     return HX509_NAME_CONSTRAINT_ERROR;
 ret = _hx509_name_ds_cmp(&c->val[i].value, &n->val[i].value, &diff);
 if (ret)
     return ret;
 if (diff != 0)
     return HX509_NAME_CONSTRAINT_ERROR;
    }
    return 0;
}
