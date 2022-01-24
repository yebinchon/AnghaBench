#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int sane; int /*<<< orphan*/  value; } ;
struct TYPE_5__ {struct TYPE_5__* next; int /*<<< orphan*/  (* handler ) () ;} ;
typedef  TYPE_1__ OPENSSL_INIT_STOP ;
typedef  int /*<<< orphan*/  CRYPTO_THREAD_LOCAL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ async_inited ; 
 scalar_t__ base_inited ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_3__ destructor_key ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * init_lock ; 
 scalar_t__ load_crypto_strings_inited ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__* stop_handlers ; 
 int stopped ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ zlib_inited ; 

void FUNC21(void)
{
    OPENSSL_INIT_STOP *currhandler, *lasthandler;
    CRYPTO_THREAD_LOCAL key;

    /* If we've not been inited then no need to deinit */
    if (!base_inited)
        return;

    /* Might be explicitly called and also by atexit */
    if (stopped)
        return;
    stopped = 1;

    /*
     * Thread stop may not get automatically called by the thread library for
     * the very last thread in some situations, so call it directly.
     */
    FUNC16(FUNC15(0));

    currhandler = stop_handlers;
    while (currhandler != NULL) {
        currhandler->handler();
        lasthandler = currhandler;
        currhandler = currhandler->next;
        FUNC3(lasthandler);
    }
    stop_handlers = NULL;

    FUNC1(init_lock);
    init_lock = NULL;

    /*
     * We assume we are single-threaded for this function, i.e. no race
     * conditions for the various "*_inited" vars below.
     */

#ifndef OPENSSL_NO_COMP
    if (zlib_inited) {
#ifdef OPENSSL_INIT_DEBUG
        fprintf(stderr, "OPENSSL_INIT: OPENSSL_cleanup: "
                        "comp_zlib_cleanup_int()\n");
#endif
        FUNC6();
    }
#endif

    if (async_inited) {
# ifdef OPENSSL_INIT_DEBUG
        fprintf(stderr, "OPENSSL_INIT: OPENSSL_cleanup: "
                        "async_deinit()\n");
# endif
        FUNC4();
    }

    if (load_crypto_strings_inited) {
#ifdef OPENSSL_INIT_DEBUG
        fprintf(stderr, "OPENSSL_INIT: OPENSSL_cleanup: "
                        "err_free_strings_int()\n");
#endif
        FUNC11();
    }

    key = destructor_key.value;
    destructor_key.sane = -1;
    FUNC0(&key);

#ifdef OPENSSL_INIT_DEBUG
    fprintf(stderr, "OPENSSL_INIT: OPENSSL_cleanup: "
                    "rand_cleanup_int()\n");
    fprintf(stderr, "OPENSSL_INIT: OPENSSL_cleanup: "
                    "conf_modules_free_int()\n");
#ifndef OPENSSL_NO_ENGINE
    fprintf(stderr, "OPENSSL_INIT: OPENSSL_cleanup: "
                    "engine_cleanup_int()\n");
#endif
    fprintf(stderr, "OPENSSL_INIT: OPENSSL_cleanup: "
                    "crypto_cleanup_all_ex_data_int()\n");
    fprintf(stderr, "OPENSSL_INIT: OPENSSL_cleanup: "
                    "bio_sock_cleanup_int()\n");
    fprintf(stderr, "OPENSSL_INIT: OPENSSL_cleanup: "
                    "bio_cleanup()\n");
    fprintf(stderr, "OPENSSL_INIT: OPENSSL_cleanup: "
                    "evp_cleanup_int()\n");
    fprintf(stderr, "OPENSSL_INIT: OPENSSL_cleanup: "
                    "obj_cleanup_int()\n");
    fprintf(stderr, "OPENSSL_INIT: OPENSSL_cleanup: "
                    "err_cleanup()\n");
#endif
    /*
     * Note that cleanup order is important:
     * - rand_cleanup_int could call an ENGINE's RAND cleanup function so
     * must be called before engine_cleanup_int()
     * - ENGINEs use CRYPTO_EX_DATA and therefore, must be cleaned up
     * before the ex data handlers are wiped in CRYPTO_cleanup_all_ex_data().
     * - conf_modules_free_int() can end up in ENGINE code so must be called
     * before engine_cleanup_int()
     * - ENGINEs and additional EVP algorithms might use added OIDs names so
     * obj_cleanup_int() must be called last
     */
    FUNC18();
    FUNC19();
    FUNC7();
#ifndef OPENSSL_NO_ENGINE
    FUNC9();
#endif
    FUNC17();
    FUNC8();
    FUNC5();
    FUNC12();
    FUNC14();
    FUNC10();

    FUNC2();

    base_inited = 0;
}