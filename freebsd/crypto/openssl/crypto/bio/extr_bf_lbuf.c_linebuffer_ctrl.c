
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * next_bio; scalar_t__ ptr; } ;
struct TYPE_7__ {int obuf_len; char* obuf; int obuf_size; } ;
typedef TYPE_1__ BIO_LINEBUFFER_CTX ;
typedef TYPE_2__ BIO ;
 int BIO_F_LINEBUFFER_CTRL ;
 int BIO_clear_retry_flags (TYPE_2__*) ;
 int BIO_copy_next_retry (TYPE_2__*) ;
 long BIO_ctrl (int *,int,long,void*) ;
 int BIO_set_write_buffer_size (TYPE_2__*,int) ;
 int BIO_write (int *,char*,int) ;
 int BIOerr (int ,int ) ;
 int DEFAULT_LINEBUFFER_SIZE ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_malloc (int) ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,int ,int ) ;

__attribute__((used)) static long linebuffer_ctrl(BIO *b, int cmd, long num, void *ptr)
{
    BIO *dbio;
    BIO_LINEBUFFER_CTX *ctx;
    long ret = 1;
    char *p;
    int r;
    int obs;

    ctx = (BIO_LINEBUFFER_CTX *)b->ptr;

    switch (cmd) {
    case 131:
        ctx->obuf_len = 0;
        if (b->next_bio == ((void*)0))
            return 0;
        ret = BIO_ctrl(b->next_bio, cmd, num, ptr);
        break;
    case 132:
        ret = (long)ctx->obuf_len;
        break;
    case 130:
        ret = (long)ctx->obuf_len;
        if (ret == 0) {
            if (b->next_bio == ((void*)0))
                return 0;
            ret = BIO_ctrl(b->next_bio, cmd, num, ptr);
        }
        break;
    case 128:
        obs = (int)num;
        p = ctx->obuf;
        if ((obs > DEFAULT_LINEBUFFER_SIZE) && (obs != ctx->obuf_size)) {
            p = OPENSSL_malloc((int)num);
            if (p == ((void*)0))
                goto malloc_error;
        }
        if (ctx->obuf != p) {
            if (ctx->obuf_len > obs) {
                ctx->obuf_len = obs;
            }
            memcpy(p, ctx->obuf, ctx->obuf_len);
            OPENSSL_free(ctx->obuf);
            ctx->obuf = p;
            ctx->obuf_size = obs;
        }
        break;
    case 129:
        if (b->next_bio == ((void*)0))
            return 0;
        BIO_clear_retry_flags(b);
        ret = BIO_ctrl(b->next_bio, cmd, num, ptr);
        BIO_copy_next_retry(b);
        break;

    case 133:
        if (b->next_bio == ((void*)0))
            return 0;
        if (ctx->obuf_len <= 0) {
            ret = BIO_ctrl(b->next_bio, cmd, num, ptr);
            break;
        }

        for (;;) {
            BIO_clear_retry_flags(b);
            if (ctx->obuf_len > 0) {
                r = BIO_write(b->next_bio, ctx->obuf, ctx->obuf_len);
                BIO_copy_next_retry(b);
                if (r <= 0)
                    return (long)r;
                if (r < ctx->obuf_len)
                    memmove(ctx->obuf, ctx->obuf + r, ctx->obuf_len - r);
                ctx->obuf_len -= r;
            } else {
                ctx->obuf_len = 0;
                break;
            }
        }
        ret = BIO_ctrl(b->next_bio, cmd, num, ptr);
        break;
    case 134:
        dbio = (BIO *)ptr;
        if (!BIO_set_write_buffer_size(dbio, ctx->obuf_size))
            ret = 0;
        break;
    default:
        if (b->next_bio == ((void*)0))
            return 0;
        ret = BIO_ctrl(b->next_bio, cmd, num, ptr);
        break;
    }
    return ret;
 malloc_error:
    BIOerr(BIO_F_LINEBUFFER_CTRL, ERR_R_MALLOC_FAILURE);
    return 0;
}
