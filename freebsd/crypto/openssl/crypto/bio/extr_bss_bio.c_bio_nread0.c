
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bio_bio_st {char* buf; scalar_t__ len; scalar_t__ size; scalar_t__ offset; scalar_t__ request; TYPE_1__* peer; } ;
typedef scalar_t__ ossl_ssize_t ;
struct TYPE_7__ {struct bio_bio_st* ptr; int init; } ;
struct TYPE_6__ {struct bio_bio_st* ptr; } ;
typedef TYPE_2__ BIO ;


 int BIO_clear_retry_flags (TYPE_2__*) ;
 int assert (int) ;
 scalar_t__ bio_read (TYPE_2__*,char*,int) ;

__attribute__((used)) static ossl_ssize_t bio_nread0(BIO *bio, char **buf)
{
    struct bio_bio_st *b, *peer_b;
    ossl_ssize_t num;

    BIO_clear_retry_flags(bio);

    if (!bio->init)
        return 0;

    b = bio->ptr;
    assert(b != ((void*)0));
    assert(b->peer != ((void*)0));
    peer_b = b->peer->ptr;
    assert(peer_b != ((void*)0));
    assert(peer_b->buf != ((void*)0));

    peer_b->request = 0;

    if (peer_b->len == 0) {
        char dummy;


        return bio_read(bio, &dummy, 1);
    }

    num = peer_b->len;
    if (peer_b->size < peer_b->offset + num)

        num = peer_b->size - peer_b->offset;
    assert(num > 0);

    if (buf != ((void*)0))
        *buf = peer_b->buf + peer_b->offset;
    return num;
}
