
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int state; int suffix_free; int suffix; void* ex_arg; int prefix_free; int prefix; } ;
struct TYPE_6__ {int ex_free_func; int ex_func; } ;
typedef TYPE_1__ BIO_ASN1_EX_FUNCS ;
typedef TYPE_2__ BIO_ASN1_BUF_CTX ;
typedef int BIO ;


 int ASN1_STATE_DONE ;
 int ASN1_STATE_HEADER ;
 int ASN1_STATE_POST_COPY ;







 int BIO_clear_retry_flags (int *) ;
 long BIO_ctrl (int *,int,long,void*) ;
 TYPE_2__* BIO_get_data (int *) ;
 int * BIO_next (int *) ;
 long asn1_bio_flush_ex (int *,TYPE_2__*,int ,int ) ;
 int asn1_bio_setup_ex (int *,TYPE_2__*,int ,int ,int ) ;

__attribute__((used)) static long asn1_bio_ctrl(BIO *b, int cmd, long arg1, void *arg2)
{
    BIO_ASN1_BUF_CTX *ctx;
    BIO_ASN1_EX_FUNCS *ex_func;
    long ret = 1;
    BIO *next;

    ctx = BIO_get_data(b);
    if (ctx == ((void*)0))
        return 0;
    next = BIO_next(b);
    switch (cmd) {

    case 129:
        ex_func = arg2;
        ctx->prefix = ex_func->ex_func;
        ctx->prefix_free = ex_func->ex_free_func;
        break;

    case 132:
        ex_func = arg2;
        ex_func->ex_func = ctx->prefix;
        ex_func->ex_free_func = ctx->prefix_free;
        break;

    case 128:
        ex_func = arg2;
        ctx->suffix = ex_func->ex_func;
        ctx->suffix_free = ex_func->ex_free_func;
        break;

    case 131:
        ex_func = arg2;
        ex_func->ex_func = ctx->suffix;
        ex_func->ex_free_func = ctx->suffix_free;
        break;

    case 130:
        ctx->ex_arg = arg2;
        break;

    case 133:
        *(void **)arg2 = ctx->ex_arg;
        break;

    case 134:
        if (next == ((void*)0))
            return 0;


        if (ctx->state == ASN1_STATE_HEADER) {
            if (!asn1_bio_setup_ex(b, ctx, ctx->suffix,
                                   ASN1_STATE_POST_COPY, ASN1_STATE_DONE))
                return 0;
        }

        if (ctx->state == ASN1_STATE_POST_COPY) {
            ret = asn1_bio_flush_ex(b, ctx, ctx->suffix_free,
                                    ASN1_STATE_DONE);
            if (ret <= 0)
                return ret;
        }

        if (ctx->state == ASN1_STATE_DONE)
            return BIO_ctrl(next, cmd, arg1, arg2);
        else {
            BIO_clear_retry_flags(b);
            return 0;
        }

    default:
        if (next == ((void*)0))
            return 0;
        return BIO_ctrl(next, cmd, arg1, arg2);

    }

    return ret;
}
