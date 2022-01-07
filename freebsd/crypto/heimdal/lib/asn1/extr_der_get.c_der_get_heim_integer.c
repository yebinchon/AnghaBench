
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; int negative; int * data; } ;
typedef TYPE_1__ heim_integer ;


 int ENOMEM ;
 void* malloc (size_t) ;
 int memcpy (int *,unsigned char const*,size_t) ;

int
der_get_heim_integer (const unsigned char *p, size_t len,
        heim_integer *data, size_t *size)
{
    data->length = 0;
    data->negative = 0;
    data->data = ((void*)0);

    if (len == 0) {
 if (size)
     *size = 0;
 return 0;
    }
    if (p[0] & 0x80) {
 unsigned char *q;
 int carry = 1;
 data->negative = 1;

 data->length = len;

 if (p[0] == 0xff) {
     p++;
     data->length--;
 }
 data->data = malloc(data->length);
 if (data->data == ((void*)0)) {
     data->length = 0;
     if (size)
  *size = 0;
     return ENOMEM;
 }
 q = &((unsigned char*)data->data)[data->length - 1];
 p += data->length - 1;
 while (q >= (unsigned char*)data->data) {
     *q = *p ^ 0xff;
     if (carry)
  carry = !++*q;
     p--;
     q--;
 }
    } else {
 data->negative = 0;
 data->length = len;

 if (p[0] == 0) {
     p++;
     data->length--;
 }
 data->data = malloc(data->length);
 if (data->data == ((void*)0) && data->length != 0) {
     data->length = 0;
     if (size)
  *size = 0;
     return ENOMEM;
 }
 memcpy(data->data, p, data->length);
    }
    if (size)
 *size = len;
    return 0;
}
