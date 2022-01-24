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
typedef  int /*<<< orphan*/  ocb128_f ;
typedef  int /*<<< orphan*/  block128_f ;
typedef  int /*<<< orphan*/  OCB128_CONTEXT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

OCB128_CONTEXT *FUNC3(void *keyenc, void *keydec,
                                  block128_f encrypt, block128_f decrypt,
                                  ocb128_f stream)
{
    OCB128_CONTEXT *octx;
    int ret;

    if ((octx = FUNC2(sizeof(*octx))) != NULL) {
        ret = FUNC0(octx, keyenc, keydec, encrypt, decrypt,
                                 stream);
        if (ret)
            return octx;
        FUNC1(octx);
    }

    return NULL;
}