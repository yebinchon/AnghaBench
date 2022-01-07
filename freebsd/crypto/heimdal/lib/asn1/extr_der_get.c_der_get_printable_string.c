
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; int * data; } ;
typedef TYPE_1__ heim_printable_string ;


 int ENOMEM ;
 int * malloc (size_t) ;
 int memcpy (int *,unsigned char const*,size_t) ;

int
der_get_printable_string(const unsigned char *p, size_t len,
    heim_printable_string *str, size_t *size)
{
    str->length = len;
    str->data = malloc(len + 1);
    if (str->data == ((void*)0))
 return ENOMEM;
    memcpy(str->data, p, len);
    ((char *)str->data)[len] = '\0';
    if(size) *size = len;
    return 0;
}
