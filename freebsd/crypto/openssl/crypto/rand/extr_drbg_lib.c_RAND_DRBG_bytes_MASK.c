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
struct TYPE_4__ {scalar_t__ type; size_t max_request; int /*<<< orphan*/ * adin_pool; int /*<<< orphan*/  max_adinlen; } ;
typedef  TYPE_1__ RAND_DRBG ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*,unsigned char*,size_t,int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(RAND_DRBG *drbg, unsigned char *out, size_t outlen)
{
    unsigned char *additional = NULL;
    size_t additional_len;
    size_t chunk;
    size_t ret = 0;

    if (drbg->adin_pool == NULL) {
        if (drbg->type == 0)
            goto err;
        drbg->adin_pool = FUNC3(0, 0, 0, drbg->max_adinlen);
        if (drbg->adin_pool == NULL)
            goto err;
    }

    additional_len = FUNC2(drbg->adin_pool,
                                                   &additional);

    for ( ; outlen > 0; outlen -= chunk, out += chunk) {
        chunk = outlen;
        if (chunk > drbg->max_request)
            chunk = drbg->max_request;
        ret = FUNC0(drbg, out, chunk, 0, additional, additional_len);
        if (!ret)
            goto err;
    }
    ret = 1;

 err:
    if (additional != NULL)
        FUNC1(drbg->adin_pool, additional);

    return ret;
}