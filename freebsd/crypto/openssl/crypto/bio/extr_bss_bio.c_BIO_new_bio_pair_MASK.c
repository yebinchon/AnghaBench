#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 long FUNC4 (int /*<<< orphan*/ *,size_t) ; 

int FUNC5(BIO **bio1_p, size_t writebuf1,
                     BIO **bio2_p, size_t writebuf2)
{
    BIO *bio1 = NULL, *bio2 = NULL;
    long r;
    int ret = 0;

    bio1 = FUNC2(FUNC3());
    if (bio1 == NULL)
        goto err;
    bio2 = FUNC2(FUNC3());
    if (bio2 == NULL)
        goto err;

    if (writebuf1) {
        r = FUNC4(bio1, writebuf1);
        if (!r)
            goto err;
    }
    if (writebuf2) {
        r = FUNC4(bio2, writebuf2);
        if (!r)
            goto err;
    }

    r = FUNC1(bio1, bio2);
    if (!r)
        goto err;
    ret = 1;

 err:
    if (ret == 0) {
        FUNC0(bio1);
        bio1 = NULL;
        FUNC0(bio2);
        bio2 = NULL;
    }

    *bio1_p = bio1;
    *bio2_p = bio2;
    return ret;
}