
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cont; int start; long buf_len; long buf_off; scalar_t__ buf; int base64; int encode; int tmp_len; scalar_t__ tmp; } ;
typedef TYPE_1__ BIO_B64_CTX ;
typedef int BIO ;


 int B64_NONE ;
 int BIO_FLAGS_BASE64_NO_NL ;
 int BIO_clear_retry_flags (int *) ;
 int BIO_copy_next_retry (int *) ;
 long BIO_ctrl (int *,int,long,void*) ;
 scalar_t__ BIO_get_data (int *) ;
 int BIO_get_flags (int *) ;
 int * BIO_next (int *) ;
 int EVP_ENCODE_CTX_num (int ) ;
 long EVP_EncodeBlock (unsigned char*,unsigned char*,int ) ;
 int EVP_EncodeFinal (int ,unsigned char*,long*) ;
 int OPENSSL_assert (int) ;
 int b64_write (int *,int *,int ) ;

__attribute__((used)) static long b64_ctrl(BIO *b, int cmd, long num, void *ptr)
{
    BIO_B64_CTX *ctx;
    long ret = 1;
    int i;
    BIO *next;

    ctx = (BIO_B64_CTX *)BIO_get_data(b);
    next = BIO_next(b);
    if ((ctx == ((void*)0)) || (next == ((void*)0)))
        return 0;

    switch (cmd) {
    case 131:
        ctx->cont = 1;
        ctx->start = 1;
        ctx->encode = B64_NONE;
        ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    case 136:
        if (ctx->cont <= 0)
            ret = 1;
        else
            ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    case 129:
        OPENSSL_assert(ctx->buf_len >= ctx->buf_off);
        ret = ctx->buf_len - ctx->buf_off;
        if ((ret == 0) && (ctx->encode != B64_NONE)
            && (EVP_ENCODE_CTX_num(ctx->base64) != 0))
            ret = 1;
        else if (ret <= 0)
            ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    case 132:
        OPENSSL_assert(ctx->buf_len >= ctx->buf_off);
        ret = ctx->buf_len - ctx->buf_off;
        if (ret <= 0)
            ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    case 135:

 again:
        while (ctx->buf_len != ctx->buf_off) {
            i = b64_write(b, ((void*)0), 0);
            if (i < 0)
                return i;
        }
        if (BIO_get_flags(b) & BIO_FLAGS_BASE64_NO_NL) {
            if (ctx->tmp_len != 0) {
                ctx->buf_len = EVP_EncodeBlock((unsigned char *)ctx->buf,
                                               (unsigned char *)ctx->tmp,
                                               ctx->tmp_len);
                ctx->buf_off = 0;
                ctx->tmp_len = 0;
                goto again;
            }
        } else if (ctx->encode != B64_NONE
                   && EVP_ENCODE_CTX_num(ctx->base64) != 0) {
            ctx->buf_off = 0;
            EVP_EncodeFinal(ctx->base64,
                            (unsigned char *)ctx->buf, &(ctx->buf_len));

            goto again;
        }

        ret = BIO_ctrl(next, cmd, num, ptr);
        break;

    case 128:
        BIO_clear_retry_flags(b);
        ret = BIO_ctrl(next, cmd, num, ptr);
        BIO_copy_next_retry(b);
        break;

    case 137:
        break;
    case 133:
    case 134:
    case 130:
    default:
        ret = BIO_ctrl(next, cmd, num, ptr);
        break;
    }
    return ret;
}
