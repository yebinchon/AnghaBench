
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ec; int dsa; int * rsa; } ;
struct TYPE_10__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;


 int ASN1_F_D2I_PUBLICKEY ;
 int ASN1_R_UNKNOWN_PUBLIC_KEY_TYPE ;
 int ASN1err (int ,int ) ;
 int ERR_R_ASN1_LIB ;
 int ERR_R_EVP_LIB ;



 int EVP_PKEY_free (TYPE_2__*) ;
 int EVP_PKEY_id (TYPE_2__*) ;
 TYPE_2__* EVP_PKEY_new () ;
 int EVP_PKEY_set_type (TYPE_2__*,int) ;
 int d2i_DSAPublicKey (int *,unsigned char const**,long) ;
 int * d2i_RSAPublicKey (int *,unsigned char const**,long) ;
 int o2i_ECPublicKey (int *,unsigned char const**,long) ;

EVP_PKEY *d2i_PublicKey(int type, EVP_PKEY **a, const unsigned char **pp,
                        long length)
{
    EVP_PKEY *ret;

    if ((a == ((void*)0)) || (*a == ((void*)0))) {
        if ((ret = EVP_PKEY_new()) == ((void*)0)) {
            ASN1err(ASN1_F_D2I_PUBLICKEY, ERR_R_EVP_LIB);
            return ((void*)0);
        }
    } else
        ret = *a;

    if (type != EVP_PKEY_id(ret) && !EVP_PKEY_set_type(ret, type)) {
        ASN1err(ASN1_F_D2I_PUBLICKEY, ERR_R_EVP_LIB);
        goto err;
    }

    switch (EVP_PKEY_id(ret)) {

    case 128:
        if ((ret->pkey.rsa = d2i_RSAPublicKey(((void*)0), pp, length)) == ((void*)0)) {
            ASN1err(ASN1_F_D2I_PUBLICKEY, ERR_R_ASN1_LIB);
            goto err;
        }
        break;


    case 130:

        if (!d2i_DSAPublicKey(&ret->pkey.dsa, pp, length)) {
            ASN1err(ASN1_F_D2I_PUBLICKEY, ERR_R_ASN1_LIB);
            goto err;
        }
        break;


    case 129:
        if (!o2i_ECPublicKey(&ret->pkey.ec, pp, length)) {
            ASN1err(ASN1_F_D2I_PUBLICKEY, ERR_R_ASN1_LIB);
            goto err;
        }
        break;

    default:
        ASN1err(ASN1_F_D2I_PUBLICKEY, ASN1_R_UNKNOWN_PUBLIC_KEY_TYPE);
        goto err;
    }
    if (a != ((void*)0))
        (*a) = ret;
    return ret;
 err:
    if (a == ((void*)0) || *a != ret)
        EVP_PKEY_free(ret);
    return ((void*)0);
}
