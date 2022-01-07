
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * next_bio; scalar_t__ ptr; } ;
struct TYPE_6__ {int ibuf_len; char* ibuf; size_t ibuf_off; int ibuf_size; } ;
typedef TYPE_1__ BIO_F_BUFFER_CTX ;
typedef TYPE_2__ BIO ;


 int BIO_clear_retry_flags (TYPE_2__*) ;
 int BIO_copy_next_retry (TYPE_2__*) ;
 int BIO_read (int *,char*,int) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static int buffer_read(BIO *b, char *out, int outl)
{
    int i, num = 0;
    BIO_F_BUFFER_CTX *ctx;

    if (out == ((void*)0))
        return 0;
    ctx = (BIO_F_BUFFER_CTX *)b->ptr;

    if ((ctx == ((void*)0)) || (b->next_bio == ((void*)0)))
        return 0;
    num = 0;
    BIO_clear_retry_flags(b);

 start:
    i = ctx->ibuf_len;

    if (i != 0) {
        if (i > outl)
            i = outl;
        memcpy(out, &(ctx->ibuf[ctx->ibuf_off]), i);
        ctx->ibuf_off += i;
        ctx->ibuf_len -= i;
        num += i;
        if (outl == i)
            return num;
        outl -= i;
        out += i;
    }







    if (outl > ctx->ibuf_size) {
        for (;;) {
            i = BIO_read(b->next_bio, out, outl);
            if (i <= 0) {
                BIO_copy_next_retry(b);
                if (i < 0)
                    return ((num > 0) ? num : i);
                if (i == 0)
                    return num;
            }
            num += i;
            if (outl == i)
                return num;
            out += i;
            outl -= i;
        }
    }



    i = BIO_read(b->next_bio, ctx->ibuf, ctx->ibuf_size);
    if (i <= 0) {
        BIO_copy_next_retry(b);
        if (i < 0)
            return ((num > 0) ? num : i);
        if (i == 0)
            return num;
    }
    ctx->ibuf_off = 0;
    ctx->ibuf_len = i;


    goto start;
}
