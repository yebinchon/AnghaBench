
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int * data; } ;
typedef TYPE_1__ heim_bit_string ;


 int ENOMEM ;
 int * malloc (size_t) ;
 int memcpy (int *,int *,size_t) ;

int
der_copy_bit_string (const heim_bit_string *from, heim_bit_string *to)
{
    size_t len;

    len = (from->length + 7) / 8;
    to->length = from->length;
    to->data = malloc(len);
    if(len != 0 && to->data == ((void*)0))
 return ENOMEM;
    memcpy(to->data, from->data, len);
    return 0;
}
