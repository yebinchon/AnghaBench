
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int key_len; TYPE_1__* cipher; } ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_2__ EVP_CIPHER_CTX ;


 int EVP_CIPHER_CTX_ctrl (TYPE_2__*,int ,int,int *) ;
 int EVP_CIPH_CUSTOM_KEY_LENGTH ;
 int EVP_CIPH_VARIABLE_LENGTH ;
 int EVP_CTRL_SET_KEY_LENGTH ;
 int EVP_F_EVP_CIPHER_CTX_SET_KEY_LENGTH ;
 int EVP_R_INVALID_KEY_LENGTH ;
 int EVPerr (int ,int ) ;

int EVP_CIPHER_CTX_set_key_length(EVP_CIPHER_CTX *c, int keylen)
{
    if (c->cipher->flags & EVP_CIPH_CUSTOM_KEY_LENGTH)
        return EVP_CIPHER_CTX_ctrl(c, EVP_CTRL_SET_KEY_LENGTH, keylen, ((void*)0));
    if (c->key_len == keylen)
        return 1;
    if ((keylen > 0) && (c->cipher->flags & EVP_CIPH_VARIABLE_LENGTH)) {
        c->key_len = keylen;
        return 1;
    }
    EVPerr(EVP_F_EVP_CIPHER_CTX_SET_KEY_LENGTH, EVP_R_INVALID_KEY_LENGTH);
    return 0;
}
