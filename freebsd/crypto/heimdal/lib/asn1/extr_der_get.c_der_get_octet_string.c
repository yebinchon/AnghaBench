
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; int * data; } ;
typedef TYPE_1__ heim_octet_string ;


 int ENOMEM ;
 int * malloc (size_t) ;
 int memcpy (int *,unsigned char const*,size_t) ;

int
der_get_octet_string (const unsigned char *p, size_t len,
        heim_octet_string *data, size_t *size)
{
    data->length = len;
    data->data = malloc(len);
    if (data->data == ((void*)0) && data->length != 0)
 return ENOMEM;
    memcpy (data->data, p, len);
    if(size) *size = len;
    return 0;
}
