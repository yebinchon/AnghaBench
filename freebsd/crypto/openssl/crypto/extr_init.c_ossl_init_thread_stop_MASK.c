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
struct thread_local_inits_st {scalar_t__ rand; scalar_t__ err_state; scalar_t__ async; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread_local_inits_st*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(struct thread_local_inits_st *locals)
{
    /* Can't do much about this */
    if (locals == NULL)
        return;

    if (locals->async) {
#ifdef OPENSSL_INIT_DEBUG
        fprintf(stderr, "OPENSSL_INIT: ossl_init_thread_stop: "
                        "async_delete_thread_state()\n");
#endif
        FUNC1();
    }

    if (locals->err_state) {
#ifdef OPENSSL_INIT_DEBUG
        fprintf(stderr, "OPENSSL_INIT: ossl_init_thread_stop: "
                        "err_delete_thread_state()\n");
#endif
        FUNC3();
    }

    if (locals->rand) {
#ifdef OPENSSL_INIT_DEBUG
        fprintf(stderr, "OPENSSL_INIT: ossl_init_thread_stop: "
                        "drbg_delete_thread_state()\n");
#endif
        FUNC2();
    }

    FUNC0(locals);
}