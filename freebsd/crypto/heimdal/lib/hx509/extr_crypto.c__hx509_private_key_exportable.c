
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* hx509_private_key ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int * export; } ;



int
_hx509_private_key_exportable(hx509_private_key key)
{
    if (key->ops->export == ((void*)0))
 return 0;
    return 1;
}
