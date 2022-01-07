
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int * data; } ;
typedef TYPE_1__ heim_printable_string ;


 int ENOMEM ;
 int * malloc (int) ;
 int memcpy (int *,int *,int) ;

int
der_copy_printable_string (const heim_printable_string *from,
         heim_printable_string *to)
{
    to->length = from->length;
    to->data = malloc(to->length + 1);
    if(to->data == ((void*)0))
 return ENOMEM;
    memcpy(to->data, from->data, to->length);
    ((char *)to->data)[to->length] = '\0';
    return 0;
}
