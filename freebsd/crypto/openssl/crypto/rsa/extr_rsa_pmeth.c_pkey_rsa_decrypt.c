
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* pkey; TYPE_3__* data; } ;
struct TYPE_10__ {scalar_t__ pad_mode; unsigned char* tbuf; int mgf1md; int md; int oaep_labellen; int oaep_label; } ;
struct TYPE_8__ {int rsa; } ;
struct TYPE_9__ {TYPE_1__ pkey; } ;
typedef TYPE_3__ RSA_PKEY_CTX ;
typedef TYPE_4__ EVP_PKEY_CTX ;


 scalar_t__ RSA_NO_PADDING ;
 scalar_t__ RSA_PKCS1_OAEP_PADDING ;
 int RSA_padding_check_PKCS1_OAEP_mgf1 (unsigned char*,int,unsigned char*,int,int,int ,int ,int ,int ) ;
 int RSA_private_decrypt (size_t,unsigned char const*,unsigned char*,int ,scalar_t__) ;
 int constant_time_msb (int) ;
 int constant_time_msb_s (int) ;
 int constant_time_select_int (int ,int,int) ;
 size_t constant_time_select_s (int ,size_t,int) ;
 int setup_tbuf (TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static int pkey_rsa_decrypt(EVP_PKEY_CTX *ctx,
                            unsigned char *out, size_t *outlen,
                            const unsigned char *in, size_t inlen)
{
    int ret;
    RSA_PKEY_CTX *rctx = ctx->data;

    if (rctx->pad_mode == RSA_PKCS1_OAEP_PADDING) {
        if (!setup_tbuf(rctx, ctx))
            return -1;
        ret = RSA_private_decrypt(inlen, in, rctx->tbuf,
                                  ctx->pkey->pkey.rsa, RSA_NO_PADDING);
        if (ret <= 0)
            return ret;
        ret = RSA_padding_check_PKCS1_OAEP_mgf1(out, ret, rctx->tbuf,
                                                ret, ret,
                                                rctx->oaep_label,
                                                rctx->oaep_labellen,
                                                rctx->md, rctx->mgf1md);
    } else {
        ret = RSA_private_decrypt(inlen, in, out, ctx->pkey->pkey.rsa,
                                  rctx->pad_mode);
    }
    *outlen = constant_time_select_s(constant_time_msb_s(ret), *outlen, ret);
    ret = constant_time_select_int(constant_time_msb(ret), ret, 1);
    return ret;
}
