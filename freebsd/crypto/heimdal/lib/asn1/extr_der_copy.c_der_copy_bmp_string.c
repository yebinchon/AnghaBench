
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int * data; } ;
typedef TYPE_1__ heim_bmp_string ;


 int ENOMEM ;
 int * malloc (int) ;
 int memcpy (int *,int *,int) ;

int
der_copy_bmp_string (const heim_bmp_string *from, heim_bmp_string *to)
{
    to->length = from->length;
    to->data = malloc(to->length * sizeof(to->data[0]));
    if(to->length != 0 && to->data == ((void*)0))
 return ENOMEM;
    memcpy(to->data, from->data, to->length * sizeof(to->data[0]));
    return 0;
}
