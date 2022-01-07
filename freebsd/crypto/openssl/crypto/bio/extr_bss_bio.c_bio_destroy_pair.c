
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bio_bio_st {scalar_t__ offset; scalar_t__ len; int * buf; TYPE_1__* peer; } ;
struct TYPE_3__ {scalar_t__ init; struct bio_bio_st* ptr; } ;
typedef TYPE_1__ BIO ;


 int assert (int) ;

__attribute__((used)) static void bio_destroy_pair(BIO *bio)
{
    struct bio_bio_st *b = bio->ptr;

    if (b != ((void*)0)) {
        BIO *peer_bio = b->peer;

        if (peer_bio != ((void*)0)) {
            struct bio_bio_st *peer_b = peer_bio->ptr;

            assert(peer_b != ((void*)0));
            assert(peer_b->peer == bio);

            peer_b->peer = ((void*)0);
            peer_bio->init = 0;
            assert(peer_b->buf != ((void*)0));
            peer_b->len = 0;
            peer_b->offset = 0;

            b->peer = ((void*)0);
            bio->init = 0;
            assert(b->buf != ((void*)0));
            b->len = 0;
            b->offset = 0;
        }
    }
}
