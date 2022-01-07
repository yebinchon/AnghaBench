
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* name; } ;
typedef TYPE_1__ X509_LOOKUP_METHOD ;


 int OPENSSL_free (TYPE_1__*) ;

void X509_LOOKUP_meth_free(X509_LOOKUP_METHOD *method)
{
    if (method != ((void*)0))
        OPENSSL_free(method->name);
    OPENSSL_free(method);
}
