
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * derbuf; } ;
typedef TYPE_1__ NDEF_SUPPORT ;
typedef int BIO ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static int ndef_prefix_free(BIO *b, unsigned char **pbuf, int *plen,
                            void *parg)
{
    NDEF_SUPPORT *ndef_aux;

    if (!parg)
        return 0;

    ndef_aux = *(NDEF_SUPPORT **)parg;

    OPENSSL_free(ndef_aux->derbuf);

    ndef_aux->derbuf = ((void*)0);
    *pbuf = ((void*)0);
    *plen = 0;
    return 1;
}
