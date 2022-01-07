
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* hx509_private_key ;
struct TYPE_4__ {scalar_t__ ref; } ;


 scalar_t__ UINT_MAX ;
 int _hx509_abort (char*) ;

hx509_private_key
_hx509_private_key_ref(hx509_private_key key)
{
    if (key->ref == 0)
 _hx509_abort("key refcount <= 0 on ref");
    key->ref++;
    if (key->ref == UINT_MAX)
 _hx509_abort("key refcount == UINT_MAX on ref");
    return key;
}
