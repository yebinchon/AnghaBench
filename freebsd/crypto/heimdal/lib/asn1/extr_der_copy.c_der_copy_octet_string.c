
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; int * data; } ;
typedef TYPE_1__ heim_octet_string ;


 int ENOMEM ;
 int * malloc (scalar_t__) ;
 int memcpy (int *,int *,scalar_t__) ;

int
der_copy_octet_string (const heim_octet_string *from, heim_octet_string *to)
{
    to->length = from->length;
    to->data = malloc(to->length);
    if(to->length != 0 && to->data == ((void*)0))
 return ENOMEM;
    memcpy(to->data, from->data, to->length);
    return 0;
}
