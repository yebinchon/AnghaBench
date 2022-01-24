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
 int /*<<< orphan*/  FUNC0 (void*,char const*,int) ; 
 void* FUNC1 (size_t,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ call_malloc_debug ; 
 void* FUNC5 (void*,size_t) ; 
 int /*<<< orphan*/  realloc_count ; 
 void* FUNC6 (void*,size_t,char const*,int) ; 

void *FUNC7(void *str, size_t num, const char *file, int line)
{
    FUNC4(realloc_count);
    if (&realloc_impl != NULL && realloc_impl != &CRYPTO_realloc)
        return FUNC6(str, num, file, line);

    FUNC3();
    if (str == NULL)
        return FUNC1(num, file, line);

    if (num == 0) {
        FUNC0(str, file, line);
        return NULL;
    }

#ifndef OPENSSL_NO_CRYPTO_MDEBUG
    if (call_malloc_debug) {
        void *ret;
        FUNC2(str, NULL, num, 0, file, line);
        ret = FUNC5(str, num);
        FUNC2(str, ret, num, 1, file, line);
        return ret;
    }
#else
    (void)(file); (void)(line);
#endif
    return FUNC5(str, num);

}