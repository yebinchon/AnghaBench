#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bio_bio_st {char* buf; size_t len; size_t size; size_t offset; scalar_t__ closed; scalar_t__ request; int /*<<< orphan*/ * peer; } ;
typedef  int ossl_ssize_t ;
struct TYPE_5__ {struct bio_bio_st* ptr; int /*<<< orphan*/  init; } ;
typedef  TYPE_1__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_F_BIO_NWRITE0 ; 
 int /*<<< orphan*/  BIO_R_BROKEN_PIPE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static ossl_ssize_t FUNC4(BIO *bio, char **buf)
{
    struct bio_bio_st *b;
    size_t num;
    size_t write_offset;

    FUNC0(bio);

    if (!bio->init)
        return 0;

    b = bio->ptr;
    FUNC3(b != NULL);
    FUNC3(b->peer != NULL);
    FUNC3(b->buf != NULL);

    b->request = 0;
    if (b->closed) {
        FUNC2(BIO_F_BIO_NWRITE0, BIO_R_BROKEN_PIPE);
        return -1;
    }

    FUNC3(b->len <= b->size);

    if (b->len == b->size) {
        FUNC1(bio);
        return -1;
    }

    num = b->size - b->len;
    write_offset = b->offset + b->len;
    if (write_offset >= b->size)
        write_offset -= b->size;
    if (write_offset + num > b->size)
        /*
         * no ring buffer wrap-around for non-copying interface (to fulfil
         * the promise by BIO_ctrl_get_write_guarantee, BIO_nwrite may have
         * to be called twice)
         */
        num = b->size - write_offset;

    if (buf != NULL)
        *buf = b->buf + write_offset;
    FUNC3(write_offset + num <= b->size);

    return num;
}