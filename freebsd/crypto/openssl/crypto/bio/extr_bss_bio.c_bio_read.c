
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bio_bio_st {size_t request; size_t len; size_t size; size_t offset; int * buf; scalar_t__ closed; TYPE_1__* peer; } ;
struct TYPE_7__ {struct bio_bio_st* ptr; int init; } ;
struct TYPE_6__ {struct bio_bio_st* ptr; } ;
typedef TYPE_2__ BIO ;


 int BIO_clear_retry_flags (TYPE_2__*) ;
 int BIO_set_retry_read (TYPE_2__*) ;
 int assert (int) ;
 int memcpy (char*,int *,size_t) ;

__attribute__((used)) static int bio_read(BIO *bio, char *buf, int size_)
{
    size_t size = size_;
    size_t rest;
    struct bio_bio_st *b, *peer_b;

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

    if (buf == ((void*)0) || size == 0)
        return 0;

    if (peer_b->len == 0) {
        if (peer_b->closed)
            return 0;
        else {
            BIO_set_retry_read(bio);
            if (size <= peer_b->size)
                peer_b->request = size;
            else



                peer_b->request = peer_b->size;
            return -1;
        }
    }


    if (peer_b->len < size)
        size = peer_b->len;



    rest = size;

    assert(rest > 0);
    do {
        size_t chunk;

        assert(rest <= peer_b->len);
        if (peer_b->offset + rest <= peer_b->size)
            chunk = rest;
        else

            chunk = peer_b->size - peer_b->offset;
        assert(peer_b->offset + chunk <= peer_b->size);

        memcpy(buf, peer_b->buf + peer_b->offset, chunk);

        peer_b->len -= chunk;
        if (peer_b->len) {
            peer_b->offset += chunk;
            assert(peer_b->offset <= peer_b->size);
            if (peer_b->offset == peer_b->size)
                peer_b->offset = 0;
            buf += chunk;
        } else {

            assert(chunk == rest);
            peer_b->offset = 0;
        }
        rest -= chunk;
    }
    while (rest);

    return size;
}
