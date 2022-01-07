
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {int * callback_ex; int * callback; int num_read; TYPE_1__* method; int init; } ;
struct TYPE_6__ {int (* bread ) (TYPE_2__*,void*,size_t,size_t*) ;} ;
typedef TYPE_2__ BIO ;


 int BIO_CB_READ ;
 int BIO_CB_RETURN ;
 int BIO_F_BIO_READ_INTERN ;
 int BIO_R_UNINITIALIZED ;
 int BIO_R_UNSUPPORTED_METHOD ;
 int BIOerr (int ,int ) ;
 int ERR_R_INTERNAL_ERROR ;
 scalar_t__ bio_call_callback (TYPE_2__*,int,void*,size_t,int ,long,int,size_t*) ;
 int stub1 (TYPE_2__*,void*,size_t,size_t*) ;

__attribute__((used)) static int bio_read_intern(BIO *b, void *data, size_t dlen, size_t *readbytes)
{
    int ret;

    if ((b == ((void*)0)) || (b->method == ((void*)0)) || (b->method->bread == ((void*)0))) {
        BIOerr(BIO_F_BIO_READ_INTERN, BIO_R_UNSUPPORTED_METHOD);
        return -2;
    }

    if ((b->callback != ((void*)0) || b->callback_ex != ((void*)0)) &&
        ((ret = (int)bio_call_callback(b, BIO_CB_READ, data, dlen, 0, 0L, 1L,
                                       ((void*)0))) <= 0))
        return ret;

    if (!b->init) {
        BIOerr(BIO_F_BIO_READ_INTERN, BIO_R_UNINITIALIZED);
        return -2;
    }

    ret = b->method->bread(b, data, dlen, readbytes);

    if (ret > 0)
        b->num_read += (uint64_t)*readbytes;

    if (b->callback != ((void*)0) || b->callback_ex != ((void*)0))
        ret = (int)bio_call_callback(b, BIO_CB_READ | BIO_CB_RETURN, data,
                                     dlen, 0, 0L, ret, readbytes);


    if (ret > 0 && *readbytes > dlen) {
        BIOerr(BIO_F_BIO_READ_INTERN, ERR_R_INTERNAL_ERROR);
        return -1;
    }

    return ret;
}
