
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t buf_len; size_t buf_off; scalar_t__ cont; int * buf; scalar_t__ sigio; int * md; } ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef TYPE_1__ BIO_OK_CTX ;
typedef int BIO ;


 int BIO_clear_retry_flags (int *) ;
 TYPE_1__* BIO_get_data (int *) ;
 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_DigestUpdate (int *,int ,int ) ;
 int EVP_MAX_MD_SIZE ;
 int * EVP_MD_CTX_md (int *) ;
 void* EVP_MD_CTX_md_data (int *) ;
 int EVP_MD_size (int const*) ;
 int WELLKNOWN ;
 int longswap (void*,int) ;
 scalar_t__ memcmp (int *,unsigned char*,int) ;
 int memcpy (void*,int *,int) ;
 int memmove (int *,int *,size_t) ;
 int strlen (int ) ;

__attribute__((used)) static int sig_in(BIO *b)
{
    BIO_OK_CTX *ctx;
    EVP_MD_CTX *md;
    unsigned char tmp[EVP_MAX_MD_SIZE];
    int ret = 0;
    const EVP_MD *digest;
    int md_size;
    void *md_data;

    ctx = BIO_get_data(b);
    md = ctx->md;
    digest = EVP_MD_CTX_md(md);
    md_size = EVP_MD_size(digest);
    md_data = EVP_MD_CTX_md_data(md);

    if ((int)(ctx->buf_len - ctx->buf_off) < 2 * md_size)
        return 1;

    if (!EVP_DigestInit_ex(md, digest, ((void*)0)))
        goto berr;
    memcpy(md_data, &(ctx->buf[ctx->buf_off]), md_size);
    longswap(md_data, md_size);
    ctx->buf_off += md_size;

    if (!EVP_DigestUpdate(md, WELLKNOWN, strlen(WELLKNOWN)))
        goto berr;
    if (!EVP_DigestFinal_ex(md, tmp, ((void*)0)))
        goto berr;
    ret = memcmp(&(ctx->buf[ctx->buf_off]), tmp, md_size) == 0;
    ctx->buf_off += md_size;
    if (ret == 1) {
        ctx->sigio = 0;
        if (ctx->buf_len != ctx->buf_off) {
            memmove(ctx->buf, &(ctx->buf[ctx->buf_off]),
                    ctx->buf_len - ctx->buf_off);
        }
        ctx->buf_len -= ctx->buf_off;
        ctx->buf_off = 0;
    } else {
        ctx->cont = 0;
    }
    return 1;
 berr:
    BIO_clear_retry_flags(b);
    return 0;
}
