
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509_ATTRIBUTE ;
struct TYPE_5__ {void* ptr; } ;
struct TYPE_6__ {TYPE_1__ value; } ;
typedef TYPE_2__ ASN1_TYPE ;


 int ASN1_TYPE_get (TYPE_2__*) ;
 int V_ASN1_BOOLEAN ;
 int V_ASN1_NULL ;
 TYPE_2__* X509_ATTRIBUTE_get0_type (int *,int) ;
 int X509_F_X509_ATTRIBUTE_GET0_DATA ;
 int X509_R_WRONG_TYPE ;
 int X509err (int ,int ) ;

void *X509_ATTRIBUTE_get0_data(X509_ATTRIBUTE *attr, int idx,
                               int atrtype, void *data)
{
    ASN1_TYPE *ttmp;
    ttmp = X509_ATTRIBUTE_get0_type(attr, idx);
    if (!ttmp)
        return ((void*)0);
    if (atrtype == V_ASN1_BOOLEAN
            || atrtype == V_ASN1_NULL
            || atrtype != ASN1_TYPE_get(ttmp)) {
        X509err(X509_F_X509_ATTRIBUTE_GET0_DATA, X509_R_WRONG_TYPE);
        return ((void*)0);
    }
    return ttmp->value.ptr;
}
