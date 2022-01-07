
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ameth; } ;
struct TYPE_6__ {int (* old_priv_encode ) (TYPE_2__*,unsigned char**) ;scalar_t__ priv_encode; } ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef TYPE_2__ EVP_PKEY ;


 int ASN1_F_I2D_PRIVATEKEY ;
 int ASN1_R_UNSUPPORTED_PUBLIC_KEY_TYPE ;
 int ASN1err (int ,int ) ;
 int * EVP_PKEY2PKCS8 (TYPE_2__*) ;
 int PKCS8_PRIV_KEY_INFO_free (int *) ;
 int i2d_PKCS8_PRIV_KEY_INFO (int *,unsigned char**) ;
 int stub1 (TYPE_2__*,unsigned char**) ;

int i2d_PrivateKey(EVP_PKEY *a, unsigned char **pp)
{
    if (a->ameth && a->ameth->old_priv_encode) {
        return a->ameth->old_priv_encode(a, pp);
    }
    if (a->ameth && a->ameth->priv_encode) {
        PKCS8_PRIV_KEY_INFO *p8 = EVP_PKEY2PKCS8(a);
        int ret = 0;
        if (p8 != ((void*)0)) {
            ret = i2d_PKCS8_PRIV_KEY_INFO(p8, pp);
            PKCS8_PRIV_KEY_INFO_free(p8);
        }
        return ret;
    }
    ASN1err(ASN1_F_I2D_PRIVATEKEY, ASN1_R_UNSUPPORTED_PUBLIC_KEY_TYPE);
    return -1;
}
