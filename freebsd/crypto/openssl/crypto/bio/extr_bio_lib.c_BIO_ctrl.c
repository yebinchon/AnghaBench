
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * callback_ex; int * callback; TYPE_1__* method; } ;
struct TYPE_6__ {long (* ctrl ) (TYPE_2__*,int,long,void*) ;} ;
typedef TYPE_2__ BIO ;


 int BIO_CB_CTRL ;
 int BIO_CB_RETURN ;
 int BIO_F_BIO_CTRL ;
 int BIO_R_UNSUPPORTED_METHOD ;
 int BIOerr (int ,int ) ;
 long bio_call_callback (TYPE_2__*,int,void*,int ,int,long,long,int *) ;
 long stub1 (TYPE_2__*,int,long,void*) ;

long BIO_ctrl(BIO *b, int cmd, long larg, void *parg)
{
    long ret;

    if (b == ((void*)0))
        return 0;

    if ((b->method == ((void*)0)) || (b->method->ctrl == ((void*)0))) {
        BIOerr(BIO_F_BIO_CTRL, BIO_R_UNSUPPORTED_METHOD);
        return -2;
    }

    if (b->callback != ((void*)0) || b->callback_ex != ((void*)0)) {
        ret = bio_call_callback(b, BIO_CB_CTRL, parg, 0, cmd, larg, 1L, ((void*)0));
        if (ret <= 0)
            return ret;
    }

    ret = b->method->ctrl(b, cmd, larg, parg);

    if (b->callback != ((void*)0) || b->callback_ex != ((void*)0))
        ret = bio_call_callback(b, BIO_CB_CTRL | BIO_CB_RETURN, parg, 0, cmd,
                                larg, ret, ((void*)0));

    return ret;
}
