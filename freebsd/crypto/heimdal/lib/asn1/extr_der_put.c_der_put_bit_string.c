
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int data; } ;
typedef TYPE_1__ heim_bit_string ;


 int ASN1_OVERFLOW ;
 int memcpy (unsigned char*,int ,size_t) ;

int
der_put_bit_string (unsigned char *p, size_t len,
      const heim_bit_string *data, size_t *size)
{
    size_t data_size = (data->length + 7) / 8;
    if (len < data_size + 1)
 return ASN1_OVERFLOW;
    p -= data_size + 1;

    memcpy (p+2, data->data, data_size);
    if (data->length && (data->length % 8) != 0)
 p[1] = 8 - (data->length % 8);
    else
 p[1] = 0;
    *size = data_size + 1;
    return 0;
}
