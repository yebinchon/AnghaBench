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
 int /*<<< orphan*/  FUNC0 (void*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ call_malloc_debug ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  free_count ; 
 void FUNC3 (void*,char const*,int) ; 

void FUNC4(void *str, const char *file, int line)
{
    FUNC1(free_count);
    if (&free_impl != NULL && free_impl != &CRYPTO_free) {
        FUNC3(str, file, line);
        return;
    }

#ifndef OPENSSL_NO_CRYPTO_MDEBUG
    if (call_malloc_debug) {
        FUNC0(str, 0, file, line);
        FUNC2(str);
        FUNC0(str, 1, file, line);
    } else {
        FUNC2(str);
    }
#else
    free(str);
#endif
}