
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ encode; int buf_len; int buf_off; size_t tmp_len; int cont; unsigned char* tmp; int tmp_nl; int * buf; int base64; scalar_t__ start; } ;
typedef TYPE_1__ BIO_B64_CTX ;
typedef int BIO ;


 int B64_BLOCK_SIZE ;
 scalar_t__ B64_DECODE ;
 int BIO_FLAGS_BASE64_NO_NL ;
 int BIO_clear_retry_flags (int *) ;
 int BIO_copy_next_retry (int *) ;
 scalar_t__ BIO_get_data (int *) ;
 int BIO_get_flags (int *) ;
 int * BIO_next (int *) ;
 int BIO_read (int *,unsigned char*,int) ;
 int BIO_should_retry (int *) ;
 int EVP_DecodeBlock (unsigned char*,unsigned char*,int) ;
 int EVP_DecodeInit (int ) ;
 int EVP_DecodeUpdate (int ,unsigned char*,int*,unsigned char*,int) ;
 int OPENSSL_assert (int) ;
 int memcpy (char*,int *,int) ;
 int memmove (char*,char*,int) ;

__attribute__((used)) static int b64_read(BIO *b, char *out, int outl)
{
    int ret = 0, i, ii, j, k, x, n, num, ret_code = 0;
    BIO_B64_CTX *ctx;
    unsigned char *p, *q;
    BIO *next;

    if (out == ((void*)0))
        return 0;
    ctx = (BIO_B64_CTX *)BIO_get_data(b);

    next = BIO_next(b);
    if ((ctx == ((void*)0)) || (next == ((void*)0)))
        return 0;

    BIO_clear_retry_flags(b);

    if (ctx->encode != B64_DECODE) {
        ctx->encode = B64_DECODE;
        ctx->buf_len = 0;
        ctx->buf_off = 0;
        ctx->tmp_len = 0;
        EVP_DecodeInit(ctx->base64);
    }


    if (ctx->buf_len > 0) {
        OPENSSL_assert(ctx->buf_len >= ctx->buf_off);
        i = ctx->buf_len - ctx->buf_off;
        if (i > outl)
            i = outl;
        OPENSSL_assert(ctx->buf_off + i < (int)sizeof(ctx->buf));
        memcpy(out, &(ctx->buf[ctx->buf_off]), i);
        ret = i;
        out += i;
        outl -= i;
        ctx->buf_off += i;
        if (ctx->buf_len == ctx->buf_off) {
            ctx->buf_len = 0;
            ctx->buf_off = 0;
        }
    }






    ret_code = 0;
    while (outl > 0) {
        if (ctx->cont <= 0)
            break;

        i = BIO_read(next, &(ctx->tmp[ctx->tmp_len]),
                     B64_BLOCK_SIZE - ctx->tmp_len);

        if (i <= 0) {
            ret_code = i;


            if (!BIO_should_retry(next)) {
                ctx->cont = i;

                if (ctx->tmp_len == 0)
                    break;

                else
                    i = 0;
            }

            else
                break;
        }
        i += ctx->tmp_len;
        ctx->tmp_len = i;





        if (ctx->start && (BIO_get_flags(b) & BIO_FLAGS_BASE64_NO_NL)) {

            ctx->tmp_len = 0;
        } else if (ctx->start) {
            q = p = (unsigned char *)ctx->tmp;
            num = 0;
            for (j = 0; j < i; j++) {
                if (*(q++) != '\n')
                    continue;






                if (ctx->tmp_nl) {
                    p = q;
                    ctx->tmp_nl = 0;
                    continue;
                }

                k = EVP_DecodeUpdate(ctx->base64,
                                     (unsigned char *)ctx->buf,
                                     &num, p, q - p);
                if ((k <= 0) && (num == 0) && (ctx->start))
                    EVP_DecodeInit(ctx->base64);
                else {
                    if (p != (unsigned char *)
                        &(ctx->tmp[0])) {
                        i -= (p - (unsigned char *)
                              &(ctx->tmp[0]));
                        for (x = 0; x < i; x++)
                            ctx->tmp[x] = p[x];
                    }
                    EVP_DecodeInit(ctx->base64);
                    ctx->start = 0;
                    break;
                }
                p = q;
            }


            if ((j == i) && (num == 0)) {




                if (p == (unsigned char *)&(ctx->tmp[0])) {

                    if (i == B64_BLOCK_SIZE) {
                        ctx->tmp_nl = 1;
                        ctx->tmp_len = 0;
                    }
                } else if (p != q) {
                    n = q - p;
                    for (ii = 0; ii < n; ii++)
                        ctx->tmp[ii] = p[ii];
                    ctx->tmp_len = n;
                }

                continue;
            } else {
                ctx->tmp_len = 0;
            }
        } else if ((i < B64_BLOCK_SIZE) && (ctx->cont > 0)) {




            continue;
        }

        if (BIO_get_flags(b) & BIO_FLAGS_BASE64_NO_NL) {
            int z, jj;

            jj = i & ~3;
            z = EVP_DecodeBlock((unsigned char *)ctx->buf,
                                (unsigned char *)ctx->tmp, jj);
            if (jj > 2) {
                if (ctx->tmp[jj - 1] == '=') {
                    z--;
                    if (ctx->tmp[jj - 2] == '=')
                        z--;
                }
            }



            if (jj != i) {
                memmove(ctx->tmp, &ctx->tmp[jj], i - jj);
                ctx->tmp_len = i - jj;
            }
            ctx->buf_len = 0;
            if (z > 0) {
                ctx->buf_len = z;
            }
            i = z;
        } else {
            i = EVP_DecodeUpdate(ctx->base64,
                                 (unsigned char *)ctx->buf, &ctx->buf_len,
                                 (unsigned char *)ctx->tmp, i);
            ctx->tmp_len = 0;
        }






        ctx->cont = i;

        ctx->buf_off = 0;
        if (i < 0) {
            ret_code = 0;
            ctx->buf_len = 0;
            break;
        }

        if (ctx->buf_len <= outl)
            i = ctx->buf_len;
        else
            i = outl;

        memcpy(out, ctx->buf, i);
        ret += i;
        ctx->buf_off = i;
        if (ctx->buf_off == ctx->buf_len) {
            ctx->buf_len = 0;
            ctx->buf_off = 0;
        }
        outl -= i;
        out += i;
    }

    BIO_copy_next_retry(b);
    return ((ret == 0) ? ret_code : ret);
}
