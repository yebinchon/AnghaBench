
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_len; int buf_off; int * buf; scalar_t__ ok; int cipher; } ;
typedef TYPE_1__ BIO_ENC_CTX ;
typedef int BIO ;


 int BIO_clear_retry_flags (int *) ;
 int BIO_copy_next_retry (int *) ;
 TYPE_1__* BIO_get_data (int *) ;
 int * BIO_next (int *) ;
 int BIO_write (int *,int *,int) ;
 int ENC_BLOCK_SIZE ;
 int EVP_CipherUpdate (int ,int *,int*,unsigned char const*,int) ;

__attribute__((used)) static int enc_write(BIO *b, const char *in, int inl)
{
    int ret = 0, n, i;
    BIO_ENC_CTX *ctx;
    BIO *next;

    ctx = BIO_get_data(b);
    next = BIO_next(b);
    if ((ctx == ((void*)0)) || (next == ((void*)0)))
        return 0;

    ret = inl;

    BIO_clear_retry_flags(b);
    n = ctx->buf_len - ctx->buf_off;
    while (n > 0) {
        i = BIO_write(next, &(ctx->buf[ctx->buf_off]), n);
        if (i <= 0) {
            BIO_copy_next_retry(b);
            return i;
        }
        ctx->buf_off += i;
        n -= i;
    }


    if ((in == ((void*)0)) || (inl <= 0))
        return 0;

    ctx->buf_off = 0;
    while (inl > 0) {
        n = (inl > ENC_BLOCK_SIZE) ? ENC_BLOCK_SIZE : inl;
        if (!EVP_CipherUpdate(ctx->cipher,
                              ctx->buf, &ctx->buf_len,
                              (const unsigned char *)in, n)) {
            BIO_clear_retry_flags(b);
            ctx->ok = 0;
            return 0;
        }
        inl -= n;
        in += n;

        ctx->buf_off = 0;
        n = ctx->buf_len;
        while (n > 0) {
            i = BIO_write(next, &(ctx->buf[ctx->buf_off]), n);
            if (i <= 0) {
                BIO_copy_next_retry(b);
                return (ret == inl) ? i : ret - inl;
            }
            n -= i;
            ctx->buf_off += i;
        }
        ctx->buf_len = 0;
        ctx->buf_off = 0;
    }
    BIO_copy_next_retry(b);
    return ret;
}
