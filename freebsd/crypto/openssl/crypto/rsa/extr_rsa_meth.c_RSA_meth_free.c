
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* name; } ;
typedef TYPE_1__ RSA_METHOD ;


 int OPENSSL_free (TYPE_1__*) ;

void RSA_meth_free(RSA_METHOD *meth)
{
    if (meth != ((void*)0)) {
        OPENSSL_free(meth->name);
        OPENSSL_free(meth);
    }
}
