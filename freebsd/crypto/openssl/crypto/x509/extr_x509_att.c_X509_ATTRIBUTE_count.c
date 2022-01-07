
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int set; } ;
typedef TYPE_1__ X509_ATTRIBUTE ;


 int sk_ASN1_TYPE_num (int ) ;

int X509_ATTRIBUTE_count(const X509_ATTRIBUTE *attr)
{
    if (attr == ((void*)0))
        return 0;
    return sk_ASN1_TYPE_num(attr->set);
}
