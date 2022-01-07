
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* hx509_private_key ;
typedef int hx509_context ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int * (* get_internal ) (int ,TYPE_2__*,char const*) ;} ;
typedef int BIGNUM ;


 int * stub1 (int ,TYPE_2__*,char const*) ;

BIGNUM *
_hx509_private_key_get_internal(hx509_context context,
    hx509_private_key key,
    const char *type)
{
    if (key->ops->get_internal == ((void*)0))
 return ((void*)0);
    return (*key->ops->get_internal)(context, key, type);
}
