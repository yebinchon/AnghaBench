
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* ameth; } ;
struct TYPE_8__ {int (* priv_decode ) (TYPE_2__*,int const*) ;} ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef TYPE_2__ EVP_PKEY ;
typedef int ASN1_OBJECT ;


 int ERR_R_MALLOC_FAILURE ;
 int ERR_add_error_data (int,char*,char*) ;
 int EVP_F_EVP_PKCS82PKEY ;
 int EVP_PKEY_free (TYPE_2__*) ;
 TYPE_2__* EVP_PKEY_new () ;
 int EVP_PKEY_set_type (TYPE_2__*,int ) ;
 int EVP_R_METHOD_NOT_SUPPORTED ;
 int EVP_R_PRIVATE_KEY_DECODE_ERROR ;
 int EVP_R_UNSUPPORTED_PRIVATE_KEY_ALGORITHM ;
 int EVPerr (int ,int ) ;
 int OBJ_obj2nid (int const*) ;
 int PKCS8_pkey_get0 (int const**,int *,int *,int *,int const*) ;
 int i2t_ASN1_OBJECT (char*,int,int const*) ;
 int stub1 (TYPE_2__*,int const*) ;

EVP_PKEY *EVP_PKCS82PKEY(const PKCS8_PRIV_KEY_INFO *p8)
{
    EVP_PKEY *pkey = ((void*)0);
    const ASN1_OBJECT *algoid;
    char obj_tmp[80];

    if (!PKCS8_pkey_get0(&algoid, ((void*)0), ((void*)0), ((void*)0), p8))
        return ((void*)0);

    if ((pkey = EVP_PKEY_new()) == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKCS82PKEY, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    if (!EVP_PKEY_set_type(pkey, OBJ_obj2nid(algoid))) {
        EVPerr(EVP_F_EVP_PKCS82PKEY, EVP_R_UNSUPPORTED_PRIVATE_KEY_ALGORITHM);
        i2t_ASN1_OBJECT(obj_tmp, 80, algoid);
        ERR_add_error_data(2, "TYPE=", obj_tmp);
        goto error;
    }

    if (pkey->ameth->priv_decode) {
        if (!pkey->ameth->priv_decode(pkey, p8)) {
            EVPerr(EVP_F_EVP_PKCS82PKEY, EVP_R_PRIVATE_KEY_DECODE_ERROR);
            goto error;
        }
    } else {
        EVPerr(EVP_F_EVP_PKCS82PKEY, EVP_R_METHOD_NOT_SUPPORTED);
        goto error;
    }

    return pkey;

 error:
    EVP_PKEY_free(pkey);
    return ((void*)0);
}
