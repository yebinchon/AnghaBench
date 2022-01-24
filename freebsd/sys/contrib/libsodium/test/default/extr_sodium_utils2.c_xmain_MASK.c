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
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGSEGV ; 
 unsigned int SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 unsigned int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 void* FUNC6 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 void* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 

int
FUNC13(void)
{
    void *       buf;
    size_t       size;
    unsigned int i;

    if (FUNC8(SIZE_MAX - 1U) != NULL) {
        return 1;
    }
    if (FUNC8(0U) == NULL) {
        return 1;
    }
    if (FUNC6(SIZE_MAX / 2U + 1U, SIZE_MAX / 2U) != NULL) {
        return 1;
    }
    FUNC7(FUNC6(0U, 0U));
    FUNC7(FUNC6(0U, 1U));
    FUNC7(FUNC6(1U, 0U));

    buf = FUNC6(1000U, 50U);
    FUNC1(buf, 0, 50000U);
    FUNC7(buf);

    FUNC7(FUNC8(0U));
    FUNC7(NULL);
    for (i = 0U; i < 10000U; i++) {
        size = 1U + FUNC3(100000U);
        buf  = FUNC8(size);
        FUNC0(buf != NULL);
        FUNC1(buf, i, size);
        FUNC10(buf);
        FUNC7(buf);
    }
    FUNC2("OK\n");

#ifdef SIGSEGV
    signal(SIGSEGV, segv_handler);
#endif
#ifdef SIGBUS
    signal(SIGBUS, segv_handler);
#endif
#ifdef SIGABRT
    signal(SIGABRT, segv_handler);
#endif
    size = 1U + FUNC3(100000U);
    buf  = FUNC8(size);
    FUNC0(buf != NULL);

/* old versions of asan emit a warning because they don't support mlock*() */
#ifndef __SANITIZE_ADDRESS__
    FUNC11(buf);
    FUNC12(buf);
#endif

#if defined(HAVE_CATCHABLE_SEGV) && !defined(__EMSCRIPTEN__) && !defined(__SANITIZE_ADDRESS__)
    sodium_memzero(((unsigned char *) buf) + size, 1U);
    sodium_mprotect_noaccess(buf);
    sodium_free(buf);
    printf("Overflow not caught\n");
#else
    FUNC4(0);
#endif
    return 0;
}