
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* scheme; int * engine; } ;
typedef TYPE_1__ OSSL_STORE_LOADER ;
typedef int ENGINE ;


 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int OSSL_STORE_F_OSSL_STORE_LOADER_NEW ;
 int OSSL_STORE_R_INVALID_SCHEME ;
 int OSSL_STOREerr (int ,int ) ;

OSSL_STORE_LOADER *OSSL_STORE_LOADER_new(ENGINE *e, const char *scheme)
{
    OSSL_STORE_LOADER *res = ((void*)0);







    if (scheme == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_LOADER_NEW,
                      OSSL_STORE_R_INVALID_SCHEME);
        return ((void*)0);
    }

    if ((res = OPENSSL_zalloc(sizeof(*res))) == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_LOADER_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    res->engine = e;
    res->scheme = scheme;
    return res;
}
