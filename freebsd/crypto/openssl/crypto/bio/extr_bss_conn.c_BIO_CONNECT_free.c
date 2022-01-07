
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int addr_first; struct TYPE_4__* param_service; struct TYPE_4__* param_hostname; } ;
typedef TYPE_1__ BIO_CONNECT ;


 int BIO_ADDRINFO_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

void BIO_CONNECT_free(BIO_CONNECT *a)
{
    if (a == ((void*)0))
        return;
    OPENSSL_free(a->param_hostname);
    OPENSSL_free(a->param_service);
    BIO_ADDRINFO_free(a->addr_first);
    OPENSSL_free(a);
}
