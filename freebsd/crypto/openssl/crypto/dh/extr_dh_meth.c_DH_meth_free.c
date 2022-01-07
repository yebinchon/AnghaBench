
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* name; } ;
typedef TYPE_1__ DH_METHOD ;


 int OPENSSL_free (TYPE_1__*) ;

void DH_meth_free(DH_METHOD *dhm)
{
    if (dhm != ((void*)0)) {
        OPENSSL_free(dhm->name);
        OPENSSL_free(dhm);
    }
}
