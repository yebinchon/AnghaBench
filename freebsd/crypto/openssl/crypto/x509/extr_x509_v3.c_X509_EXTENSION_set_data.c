
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int value; } ;
typedef TYPE_1__ X509_EXTENSION ;
struct TYPE_6__ {int length; int data; } ;
typedef TYPE_2__ ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_set (int *,int ,int ) ;

int X509_EXTENSION_set_data(X509_EXTENSION *ex, ASN1_OCTET_STRING *data)
{
    int i;

    if (ex == ((void*)0))
        return 0;
    i = ASN1_OCTET_STRING_set(&ex->value, data->data, data->length);
    if (!i)
        return 0;
    return 1;
}
