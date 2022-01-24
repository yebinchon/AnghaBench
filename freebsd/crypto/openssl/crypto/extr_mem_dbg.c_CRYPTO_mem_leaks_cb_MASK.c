#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int (* print_cb ) (char const*,size_t,void*) ;scalar_t__ chunks; scalar_t__ bytes; void* print_cb_arg; } ;
typedef  TYPE_1__ MEM_LEAK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,scalar_t__,scalar_t__) ; 
 int CRYPTO_MEM_CHECK_DISABLE ; 
 int CRYPTO_MEM_CHECK_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  appinfokey ; 
 int /*<<< orphan*/  do_memdbg_init ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * long_memdbg_lock ; 
 int /*<<< orphan*/  memdbg_init ; 
 int /*<<< orphan*/ * memdbg_lock ; 
 int /*<<< orphan*/ * mh ; 
 int mh_mode ; 
 int /*<<< orphan*/  print_leak ; 
 size_t FUNC10 (char*) ; 

int FUNC11(int (*cb) (const char *str, size_t len, void *u),
                        void *u)
{
    MEM_LEAK ml;

    /* Ensure all resources are released */
    FUNC6();

    if (!FUNC7(&memdbg_init, do_memdbg_init))
        return -1;

    FUNC5(CRYPTO_MEM_CHECK_DISABLE);

    ml.print_cb = cb;
    ml.print_cb_arg = u;
    ml.bytes = 0;
    ml.chunks = 0;
    if (mh != NULL)
        FUNC8(mh, print_leak, &ml);

    if (ml.chunks != 0) {
        char buf[256];

        FUNC0(buf, sizeof(buf), "%ld bytes leaked in %d chunks\n",
                     ml.bytes, ml.chunks);
        cb(buf, FUNC10(buf), u);
    } else {
        /*
         * Make sure that, if we found no leaks, memory-leak debugging itself
         * does not introduce memory leaks (which might irritate external
         * debugging tools). (When someone enables leak checking, but does not
         * call this function, we declare it to be their fault.)
         */
        int old_mh_mode;

        FUNC4(memdbg_lock);

        /*
         * avoid deadlock when lh_free() uses CRYPTO_mem_debug_free(), which uses
         * mem_check_on
         */
        old_mh_mode = mh_mode;
        mh_mode = CRYPTO_MEM_CHECK_OFF;

        FUNC9(mh);
        mh = NULL;

        mh_mode = old_mh_mode;
        FUNC3(memdbg_lock);
    }
    FUNC5(CRYPTO_MEM_CHECK_OFF);

    /* Clean up locks etc */
    FUNC1(&appinfokey);
    FUNC2(memdbg_lock);
    FUNC2(long_memdbg_lock);
    memdbg_lock = NULL;
    long_memdbg_lock = NULL;

    return ml.chunks == 0 ? 1 : 0;
}