
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; int* data; } ;
typedef TYPE_1__ heim_universal_string ;


 int ASN1_OVERFLOW ;

int
der_put_universal_string (unsigned char *p, size_t len,
     const heim_universal_string *data, size_t *size)
{
    size_t i;
    if (len / 4 < data->length)
 return ASN1_OVERFLOW;
    p -= data->length * 4;
    for (i = 0; i < data->length; i++) {
 p[1] = (data->data[i] >> 24) & 0xff;
 p[2] = (data->data[i] >> 16) & 0xff;
 p[3] = (data->data[i] >> 8) & 0xff;
 p[4] = data->data[i] & 0xff;
 p += 4;
    }
    if (size) *size = data->length * 4;
    return 0;
}
