
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* algor; } ;
typedef TYPE_3__ X509_PUBKEY ;
struct TYPE_15__ {TYPE_2__* ameth; } ;
struct TYPE_13__ {int (* pub_decode ) (TYPE_4__*,TYPE_3__*) ;} ;
struct TYPE_12__ {int algorithm; } ;
typedef TYPE_4__ EVP_PKEY ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_free (TYPE_4__*) ;
 TYPE_4__* EVP_PKEY_new () ;
 int EVP_PKEY_set_type (TYPE_4__*,int ) ;
 int OBJ_obj2nid (int ) ;
 int X509_F_X509_PUBKEY_DECODE ;
 int X509_R_METHOD_NOT_SUPPORTED ;
 int X509_R_PUBLIC_KEY_DECODE_ERROR ;
 int X509_R_UNSUPPORTED_ALGORITHM ;
 int X509err (int ,int ) ;
 int stub1 (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static int x509_pubkey_decode(EVP_PKEY **ppkey, X509_PUBKEY *key)
{
    EVP_PKEY *pkey = EVP_PKEY_new();

    if (pkey == ((void*)0)) {
        X509err(X509_F_X509_PUBKEY_DECODE, ERR_R_MALLOC_FAILURE);
        return -1;
    }

    if (!EVP_PKEY_set_type(pkey, OBJ_obj2nid(key->algor->algorithm))) {
        X509err(X509_F_X509_PUBKEY_DECODE, X509_R_UNSUPPORTED_ALGORITHM);
        goto error;
    }

    if (pkey->ameth->pub_decode) {





        if (!pkey->ameth->pub_decode(pkey, key)) {
            X509err(X509_F_X509_PUBKEY_DECODE, X509_R_PUBLIC_KEY_DECODE_ERROR);
            goto error;
        }
    } else {
        X509err(X509_F_X509_PUBKEY_DECODE, X509_R_METHOD_NOT_SUPPORTED);
        goto error;
    }

    *ppkey = pkey;
    return 1;

 error:
    EVP_PKEY_free(pkey);
    return 0;
}
