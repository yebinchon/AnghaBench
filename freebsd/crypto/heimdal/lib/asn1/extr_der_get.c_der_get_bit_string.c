
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int len ;
struct TYPE_3__ {size_t length; int * data; } ;
typedef TYPE_1__ heim_bit_string ;


 int ASN1_BAD_FORMAT ;
 int ASN1_OVERRUN ;
 int ENOMEM ;
 int * malloc (size_t) ;
 int memcpy (int *,unsigned char const*,size_t) ;

int
der_get_bit_string (const unsigned char *p, size_t len,
      heim_bit_string *data, size_t *size)
{
    if (len < 1)
 return ASN1_OVERRUN;
    if (p[0] > 7)
 return ASN1_BAD_FORMAT;
    if (len - 1 == 0 && p[0] != 0)
 return ASN1_BAD_FORMAT;


    if ((len - 1) >> (sizeof(len) * 8 - 3))
 return ASN1_OVERRUN;
    data->length = (len - 1) * 8;
    data->data = malloc(len - 1);
    if (data->data == ((void*)0) && (len - 1) != 0)
 return ENOMEM;

    if (len - 1 != 0) {
      memcpy (data->data, p + 1, len - 1);
      data->length -= p[0];
    }
    if(size) *size = len;
    return 0;
}
