
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int set; } ;
typedef TYPE_1__ X509_ATTRIBUTE ;
typedef int ASN1_TYPE ;


 int * sk_ASN1_TYPE_value (int ,int) ;

ASN1_TYPE *X509_ATTRIBUTE_get0_type(X509_ATTRIBUTE *attr, int idx)
{
    if (attr == ((void*)0))
        return ((void*)0);
    return sk_ASN1_TYPE_value(attr->set, idx);
}
