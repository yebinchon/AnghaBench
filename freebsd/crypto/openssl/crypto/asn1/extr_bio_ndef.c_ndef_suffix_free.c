
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NDEF_SUPPORT ;
typedef int BIO ;


 int OPENSSL_free (int *) ;
 int ndef_prefix_free (int *,unsigned char**,int*,void*) ;

__attribute__((used)) static int ndef_suffix_free(BIO *b, unsigned char **pbuf, int *plen,
                            void *parg)
{
    NDEF_SUPPORT **pndef_aux = (NDEF_SUPPORT **)parg;
    if (!ndef_prefix_free(b, pbuf, plen, parg))
        return 0;
    OPENSSL_free(*pndef_aux);
    *pndef_aux = ((void*)0);
    return 1;
}
