
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct bio_bio_st {char* buf; size_t len; size_t size; size_t offset; scalar_t__ closed; scalar_t__ request; int * peer; } ;
typedef int ossl_ssize_t ;
struct TYPE_5__ {struct bio_bio_st* ptr; int init; } ;
typedef TYPE_1__ BIO ;


 int BIO_F_BIO_NWRITE0 ;
 int BIO_R_BROKEN_PIPE ;
 int BIO_clear_retry_flags (TYPE_1__*) ;
 int BIO_set_retry_write (TYPE_1__*) ;
 int BIOerr (int ,int ) ;
 int assert (int) ;

__attribute__((used)) static ossl_ssize_t bio_nwrite0(BIO *bio, char **buf)
{
    struct bio_bio_st *b;
    size_t num;
    size_t write_offset;

    BIO_clear_retry_flags(bio);

    if (!bio->init)
        return 0;

    b = bio->ptr;
    assert(b != ((void*)0));
    assert(b->peer != ((void*)0));
    assert(b->buf != ((void*)0));

    b->request = 0;
    if (b->closed) {
        BIOerr(BIO_F_BIO_NWRITE0, BIO_R_BROKEN_PIPE);
        return -1;
    }

    assert(b->len <= b->size);

    if (b->len == b->size) {
        BIO_set_retry_write(bio);
        return -1;
    }

    num = b->size - b->len;
    write_offset = b->offset + b->len;
    if (write_offset >= b->size)
        write_offset -= b->size;
    if (write_offset + num > b->size)





        num = b->size - write_offset;

    if (buf != ((void*)0))
        *buf = b->buf + write_offset;
    assert(write_offset + num <= b->size);

    return num;
}
