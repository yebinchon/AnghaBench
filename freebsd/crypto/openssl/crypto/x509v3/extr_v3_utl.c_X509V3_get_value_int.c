
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
typedef TYPE_1__ CONF_VALUE ;
typedef int ASN1_INTEGER ;


 int X509V3_conf_err (TYPE_1__ const*) ;
 int * s2i_ASN1_INTEGER (int *,int ) ;

int X509V3_get_value_int(const CONF_VALUE *value, ASN1_INTEGER **aint)
{
    ASN1_INTEGER *itmp;

    if ((itmp = s2i_ASN1_INTEGER(((void*)0), value->value)) == ((void*)0)) {
        X509V3_conf_err(value);
        return 0;
    }
    *aint = itmp;
    return 1;
}
