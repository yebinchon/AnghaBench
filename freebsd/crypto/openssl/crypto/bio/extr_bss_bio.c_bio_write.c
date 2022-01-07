
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct bio_bio_st {scalar_t__ len; scalar_t__ size; size_t offset; int * buf; scalar_t__ closed; scalar_t__ request; int * peer; } ;
struct TYPE_5__ {struct bio_bio_st* ptr; int init; } ;
typedef TYPE_1__ BIO ;


 int BIO_F_BIO_WRITE ;
 int BIO_R_BROKEN_PIPE ;
 int BIO_clear_retry_flags (TYPE_1__*) ;
 int BIO_set_retry_write (TYPE_1__*) ;
 int BIOerr (int ,int ) ;
 int assert (int) ;
 int memcpy (int *,char const*,size_t) ;

__attribute__((used)) static int bio_write(BIO *bio, const char *buf, int num_)
{
    size_t num = num_;
    size_t rest;
    struct bio_bio_st *b;

    BIO_clear_retry_flags(bio);

    if (!bio->init || buf == ((void*)0) || num == 0)
        return 0;

    b = bio->ptr;
    assert(b != ((void*)0));
    assert(b->peer != ((void*)0));
    assert(b->buf != ((void*)0));

    b->request = 0;
    if (b->closed) {

        BIOerr(BIO_F_BIO_WRITE, BIO_R_BROKEN_PIPE);
        return -1;
    }

    assert(b->len <= b->size);

    if (b->len == b->size) {
        BIO_set_retry_write(bio);
        return -1;
    }


    if (num > b->size - b->len)
        num = b->size - b->len;



    rest = num;

    assert(rest > 0);
    do {
        size_t write_offset;
        size_t chunk;

        assert(b->len + rest <= b->size);

        write_offset = b->offset + b->len;
        if (write_offset >= b->size)
            write_offset -= b->size;


        if (write_offset + rest <= b->size)
            chunk = rest;
        else

            chunk = b->size - write_offset;

        memcpy(b->buf + write_offset, buf, chunk);

        b->len += chunk;

        assert(b->len <= b->size);

        rest -= chunk;
        buf += chunk;
    }
    while (rest);

    return num;
}
