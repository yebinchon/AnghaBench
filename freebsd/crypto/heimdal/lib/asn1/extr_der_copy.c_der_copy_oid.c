
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int * components; } ;
typedef TYPE_1__ heim_oid ;


 int ENOMEM ;
 int * malloc (int) ;
 int memcpy (int *,int *,int) ;

int
der_copy_oid (const heim_oid *from, heim_oid *to)
{
    to->length = from->length;
    to->components = malloc(to->length * sizeof(*to->components));
    if (to->length != 0 && to->components == ((void*)0))
 return ENOMEM;
    memcpy(to->components, from->components,
    to->length * sizeof(*to->components));
    return 0;
}
