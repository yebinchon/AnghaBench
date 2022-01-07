
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extensions; } ;
typedef TYPE_1__ TS_REQ ;
typedef int ASN1_OBJECT ;


 int X509v3_get_ext_by_OBJ (int ,int const*,int) ;

int TS_REQ_get_ext_by_OBJ(TS_REQ *a, const ASN1_OBJECT *obj, int lastpos)
{
    return X509v3_get_ext_by_OBJ(a->extensions, obj, lastpos);
}
