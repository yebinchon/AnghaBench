
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* ameth; } ;
struct TYPE_8__ {int (* set_pub_key ) (TYPE_2__*,unsigned char const*,size_t) ;} ;
typedef TYPE_2__ EVP_PKEY ;
typedef int ENGINE ;


 int EVP_F_EVP_PKEY_NEW_RAW_PUBLIC_KEY ;
 int EVP_PKEY_free (TYPE_2__*) ;
 TYPE_2__* EVP_PKEY_new () ;
 int EVP_R_KEY_SETUP_FAILED ;
 int EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ;
 int EVPerr (int ,int ) ;
 int pkey_set_type (TYPE_2__*,int *,int,int *,int) ;
 int stub1 (TYPE_2__*,unsigned char const*,size_t) ;

EVP_PKEY *EVP_PKEY_new_raw_public_key(int type, ENGINE *e,
                                      const unsigned char *pub,
                                      size_t len)
{
    EVP_PKEY *ret = EVP_PKEY_new();

    if (ret == ((void*)0)
            || !pkey_set_type(ret, e, type, ((void*)0), -1)) {

        goto err;
    }

    if (ret->ameth->set_pub_key == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKEY_NEW_RAW_PUBLIC_KEY,
               EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        goto err;
    }

    if (!ret->ameth->set_pub_key(ret, pub, len)) {
        EVPerr(EVP_F_EVP_PKEY_NEW_RAW_PUBLIC_KEY, EVP_R_KEY_SETUP_FAILED);
        goto err;
    }

    return ret;

 err:
    EVP_PKEY_free(ret);
    return ((void*)0);
}
