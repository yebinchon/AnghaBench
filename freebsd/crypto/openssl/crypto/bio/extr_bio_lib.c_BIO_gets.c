
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * callback_ex; int * callback; TYPE_1__* method; int init; } ;
struct TYPE_6__ {int (* bgets ) (TYPE_2__*,char*,int) ;} ;
typedef TYPE_2__ BIO ;


 int BIO_CB_GETS ;
 int BIO_CB_RETURN ;
 int BIO_F_BIO_GETS ;
 int BIO_R_INVALID_ARGUMENT ;
 int BIO_R_UNINITIALIZED ;
 int BIO_R_UNSUPPORTED_METHOD ;
 int BIOerr (int ,int ) ;
 scalar_t__ bio_call_callback (TYPE_2__*,int,char*,int,int ,long,int,size_t*) ;
 int stub1 (TYPE_2__*,char*,int) ;

int BIO_gets(BIO *b, char *buf, int size)
{
    int ret;
    size_t readbytes = 0;

    if ((b == ((void*)0)) || (b->method == ((void*)0)) || (b->method->bgets == ((void*)0))) {
        BIOerr(BIO_F_BIO_GETS, BIO_R_UNSUPPORTED_METHOD);
        return -2;
    }

    if (size < 0) {
        BIOerr(BIO_F_BIO_GETS, BIO_R_INVALID_ARGUMENT);
        return 0;
    }

    if (b->callback != ((void*)0) || b->callback_ex != ((void*)0)) {
        ret = (int)bio_call_callback(b, BIO_CB_GETS, buf, size, 0, 0L, 1, ((void*)0));
        if (ret <= 0)
            return ret;
    }

    if (!b->init) {
        BIOerr(BIO_F_BIO_GETS, BIO_R_UNINITIALIZED);
        return -2;
    }

    ret = b->method->bgets(b, buf, size);

    if (ret > 0) {
        readbytes = ret;
        ret = 1;
    }

    if (b->callback != ((void*)0) || b->callback_ex != ((void*)0))
        ret = (int)bio_call_callback(b, BIO_CB_GETS | BIO_CB_RETURN, buf, size,
                                     0, 0L, ret, &readbytes);

    if (ret > 0) {

        if (readbytes > (size_t)size)
            ret = -1;
        else
            ret = (int)readbytes;
    }

    return ret;
}
