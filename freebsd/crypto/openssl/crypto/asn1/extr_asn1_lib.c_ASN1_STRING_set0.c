
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; void* data; } ;
typedef TYPE_1__ ASN1_STRING ;


 int OPENSSL_free (void*) ;

void ASN1_STRING_set0(ASN1_STRING *str, void *data, int len)
{
    OPENSSL_free(str->data);
    str->data = data;
    str->length = len;
}
