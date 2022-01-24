#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bio_bio_st {struct bio_bio_st* buf; scalar_t__ peer; } ;
struct TYPE_4__ {struct bio_bio_st* ptr; } ;
typedef  TYPE_1__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio_bio_st*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(BIO *bio)
{
    struct bio_bio_st *b;

    if (bio == NULL)
        return 0;
    b = bio->ptr;

    FUNC1(b != NULL);

    if (b->peer)
        FUNC2(bio);

    FUNC0(b->buf);
    FUNC0(b);

    return 1;
}