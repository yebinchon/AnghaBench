#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct bio_bio_st {size_t request; size_t len; size_t size; size_t offset; int /*<<< orphan*/ * buf; scalar_t__ closed; TYPE_1__* peer; } ;
struct TYPE_7__ {struct bio_bio_st* ptr; int /*<<< orphan*/  init; } ;
struct TYPE_6__ {struct bio_bio_st* ptr; } ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC4(BIO *bio, char *buf, int size_)
{
    size_t size = size_;
    size_t rest;
    struct bio_bio_st *b, *peer_b;

    FUNC0(bio);

    if (!bio->init)
        return 0;

    b = bio->ptr;
    FUNC2(b != NULL);
    FUNC2(b->peer != NULL);
    peer_b = b->peer->ptr;
    FUNC2(peer_b != NULL);
    FUNC2(peer_b->buf != NULL);

    peer_b->request = 0;        /* will be set in "retry_read" situation */

    if (buf == NULL || size == 0)
        return 0;

    if (peer_b->len == 0) {
        if (peer_b->closed)
            return 0;           /* writer has closed, and no data is left */
        else {
            FUNC1(bio); /* buffer is empty */
            if (size <= peer_b->size)
                peer_b->request = size;
            else
                /*
                 * don't ask for more than the peer can deliver in one write
                 */
                peer_b->request = peer_b->size;
            return -1;
        }
    }

    /* we can read */
    if (peer_b->len < size)
        size = peer_b->len;

    /* now read "size" bytes */

    rest = size;

    FUNC2(rest > 0);
    do {                        /* one or two iterations */
        size_t chunk;

        FUNC2(rest <= peer_b->len);
        if (peer_b->offset + rest <= peer_b->size)
            chunk = rest;
        else
            /* wrap around ring buffer */
            chunk = peer_b->size - peer_b->offset;
        FUNC2(peer_b->offset + chunk <= peer_b->size);

        FUNC3(buf, peer_b->buf + peer_b->offset, chunk);

        peer_b->len -= chunk;
        if (peer_b->len) {
            peer_b->offset += chunk;
            FUNC2(peer_b->offset <= peer_b->size);
            if (peer_b->offset == peer_b->size)
                peer_b->offset = 0;
            buf += chunk;
        } else {
            /* buffer now empty, no need to advance "buf" */
            FUNC2(chunk == rest);
            peer_b->offset = 0;
        }
        rest -= chunk;
    }
    while (rest);

    return size;
}