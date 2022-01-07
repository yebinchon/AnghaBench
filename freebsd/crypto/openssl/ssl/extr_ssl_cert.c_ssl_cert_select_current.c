
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_5__ {TYPE_1__* key; TYPE_1__* pkeys; } ;
struct TYPE_4__ {int * x509; scalar_t__ privatekey; } ;
typedef TYPE_1__ CERT_PKEY ;
typedef TYPE_2__ CERT ;


 int SSL_PKEY_NUM ;
 int X509_cmp (int *,int *) ;

int ssl_cert_select_current(CERT *c, X509 *x)
{
    int i;
    if (x == ((void*)0))
        return 0;
    for (i = 0; i < SSL_PKEY_NUM; i++) {
        CERT_PKEY *cpk = c->pkeys + i;
        if (cpk->x509 == x && cpk->privatekey) {
            c->key = cpk;
            return 1;
        }
    }

    for (i = 0; i < SSL_PKEY_NUM; i++) {
        CERT_PKEY *cpk = c->pkeys + i;
        if (cpk->privatekey && cpk->x509 && !X509_cmp(cpk->x509, x)) {
            c->key = cpk;
            return 1;
        }
    }
    return 0;
}
