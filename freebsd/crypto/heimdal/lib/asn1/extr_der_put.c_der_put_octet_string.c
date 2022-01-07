
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; int data; } ;
typedef TYPE_1__ heim_octet_string ;


 int ASN1_OVERFLOW ;
 int memcpy (unsigned char*,int ,size_t) ;

int
der_put_octet_string (unsigned char *p, size_t len,
        const heim_octet_string *data, size_t *size)
{
    if (len < data->length)
 return ASN1_OVERFLOW;
    p -= data->length;
    memcpy (p+1, data->data, data->length);
    *size = data->length;
    return 0;
}
