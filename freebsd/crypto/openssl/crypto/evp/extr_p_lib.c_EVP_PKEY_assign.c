
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* ptr; } ;
struct TYPE_6__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;


 int EVP_PKEY_set_type (TYPE_2__*,int) ;

int EVP_PKEY_assign(EVP_PKEY *pkey, int type, void *key)
{
    if (pkey == ((void*)0) || !EVP_PKEY_set_type(pkey, type))
        return 0;
    pkey->pkey.ptr = key;
    return (key != ((void*)0));
}
