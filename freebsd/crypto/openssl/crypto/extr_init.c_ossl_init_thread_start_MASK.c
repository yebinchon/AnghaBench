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
typedef  int uint64_t ;
struct thread_local_inits_st {int async; int err_state; int rand; } ;

/* Variables and functions */
 int OPENSSL_INIT_THREAD_ASYNC ; 
 int OPENSSL_INIT_THREAD_ERR_STATE ; 
 int OPENSSL_INIT_THREAD_RAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct thread_local_inits_st* FUNC2 (int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC3(uint64_t opts)
{
    struct thread_local_inits_st *locals;

    if (!FUNC0(0, NULL))
        return 0;

    locals = FUNC2(1);

    if (locals == NULL)
        return 0;

    if (opts & OPENSSL_INIT_THREAD_ASYNC) {
#ifdef OPENSSL_INIT_DEBUG
        fprintf(stderr, "OPENSSL_INIT: ossl_init_thread_start: "
                        "marking thread for async\n");
#endif
        locals->async = 1;
    }

    if (opts & OPENSSL_INIT_THREAD_ERR_STATE) {
#ifdef OPENSSL_INIT_DEBUG
        fprintf(stderr, "OPENSSL_INIT: ossl_init_thread_start: "
                        "marking thread for err_state\n");
#endif
        locals->err_state = 1;
    }

    if (opts & OPENSSL_INIT_THREAD_RAND) {
#ifdef OPENSSL_INIT_DEBUG
        fprintf(stderr, "OPENSSL_INIT: ossl_init_thread_start: "
                        "marking thread for rand\n");
#endif
        locals->rand = 1;
    }

    return 1;
}