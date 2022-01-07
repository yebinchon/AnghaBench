
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* data; } ;
typedef TYPE_1__ ASN1_STRING ;



unsigned char *ASN1_STRING_data(ASN1_STRING *x)
{
    return x->data;
}
