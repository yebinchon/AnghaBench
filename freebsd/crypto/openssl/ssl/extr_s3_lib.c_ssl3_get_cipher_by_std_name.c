
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * stdname; } ;
typedef TYPE_1__ const SSL_CIPHER ;


 size_t OSSL_NELEM (TYPE_1__ const**) ;
 size_t SSL3_NUM_CIPHERS ;
 size_t SSL3_NUM_SCSVS ;
 size_t TLS13_NUM_CIPHERS ;
 TYPE_1__ const* ssl3_ciphers ;
 TYPE_1__ const* ssl3_scsvs ;
 scalar_t__ strcmp (char const*,int *) ;
 TYPE_1__ const* tls13_ciphers ;

const SSL_CIPHER *ssl3_get_cipher_by_std_name(const char *stdname)
{
    SSL_CIPHER *c = ((void*)0), *tbl;
    SSL_CIPHER *alltabs[] = {tls13_ciphers, ssl3_ciphers};
    size_t i, j, tblsize[] = {TLS13_NUM_CIPHERS, SSL3_NUM_CIPHERS};


    for (j = 0; j < OSSL_NELEM(alltabs); j++) {
        for (i = 0, tbl = alltabs[j]; i < tblsize[j]; i++, tbl++) {
            if (tbl->stdname == ((void*)0))
                continue;
            if (strcmp(stdname, tbl->stdname) == 0) {
                c = tbl;
                break;
            }
        }
    }
    if (c == ((void*)0)) {
        tbl = ssl3_scsvs;
        for (i = 0; i < SSL3_NUM_SCSVS; i++, tbl++) {
            if (strcmp(stdname, tbl->stdname) == 0) {
                c = tbl;
                break;
            }
        }
    }
    return c;
}
