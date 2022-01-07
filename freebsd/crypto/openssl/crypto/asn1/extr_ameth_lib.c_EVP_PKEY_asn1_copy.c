
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pkey_check; int siginf_set; int item_verify; int item_sign; int pkey_ctrl; int pkey_free; int param_print; int param_cmp; int param_copy; int param_missing; int param_encode; int param_decode; int pkey_bits; int pkey_size; int old_priv_decode; int old_priv_encode; int priv_print; int priv_encode; int priv_decode; int pub_print; int pub_cmp; int pub_encode; int pub_decode; } ;
typedef TYPE_1__ EVP_PKEY_ASN1_METHOD ;



void EVP_PKEY_asn1_copy(EVP_PKEY_ASN1_METHOD *dst,
                        const EVP_PKEY_ASN1_METHOD *src)
{

    dst->pub_decode = src->pub_decode;
    dst->pub_encode = src->pub_encode;
    dst->pub_cmp = src->pub_cmp;
    dst->pub_print = src->pub_print;

    dst->priv_decode = src->priv_decode;
    dst->priv_encode = src->priv_encode;
    dst->priv_print = src->priv_print;

    dst->old_priv_encode = src->old_priv_encode;
    dst->old_priv_decode = src->old_priv_decode;

    dst->pkey_size = src->pkey_size;
    dst->pkey_bits = src->pkey_bits;

    dst->param_decode = src->param_decode;
    dst->param_encode = src->param_encode;
    dst->param_missing = src->param_missing;
    dst->param_copy = src->param_copy;
    dst->param_cmp = src->param_cmp;
    dst->param_print = src->param_print;

    dst->pkey_free = src->pkey_free;
    dst->pkey_ctrl = src->pkey_ctrl;

    dst->item_sign = src->item_sign;
    dst->item_verify = src->item_verify;

    dst->siginf_set = src->siginf_set;

    dst->pkey_check = src->pkey_check;

}
