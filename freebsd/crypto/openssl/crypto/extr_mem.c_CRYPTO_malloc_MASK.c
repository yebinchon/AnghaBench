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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ allow_customize ; 
 scalar_t__ call_malloc_debug ; 
 void* FUNC3 (size_t) ; 
 int /*<<< orphan*/  malloc_count ; 
 void* FUNC4 (size_t,char const*,int) ; 

void *FUNC5(size_t num, const char *file, int line)
{
    void *ret = NULL;

    FUNC2(malloc_count);
    if (&malloc_impl != NULL && malloc_impl != CRYPTO_malloc)
        return FUNC4(num, file, line);

    if (num == 0)
        return NULL;

    FUNC1();
    if (allow_customize) {
        /*
         * Disallow customization after the first allocation. We only set this
         * if necessary to avoid a store to the same cache line on every
         * allocation.
         */
        allow_customize = 0;
    }
#ifndef OPENSSL_NO_CRYPTO_MDEBUG
    if (call_malloc_debug) {
        FUNC0(NULL, num, 0, file, line);
        ret = FUNC3(num);
        FUNC0(ret, num, 1, file, line);
    } else {
        ret = FUNC3(num);
    }
#else
    (void)(file); (void)(line);
    ret = malloc(num);
#endif

    return ret;
}