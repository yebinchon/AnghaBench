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
typedef  int /*<<< orphan*/  ERR_STATE ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OPENSSL_INIT_BASE_ONLY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  err_do_init ; 
 int /*<<< orphan*/  err_init ; 
 int /*<<< orphan*/  err_thread_local ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(void **state)
{
    int saveerrno = FUNC4();

    /*
     * Note, at present our only caller is OPENSSL_init_crypto(), indirectly
     * via ossl_init_load_crypto_nodelete(), by which point the requested
     * "base" initialization has already been performed, so the below call is a
     * NOOP, that re-enters OPENSSL_init_crypto() only to quickly return.
     *
     * If are no other valid callers of this function, the call below can be
     * removed, avoiding the re-entry into OPENSSL_init_crypto().  If there are
     * potential uses that are not from inside OPENSSL_init_crypto(), then this
     * call is needed, but some care is required to make sure that the re-entry
     * remains a NOOP.
     */
    if (!FUNC2(OPENSSL_INIT_BASE_ONLY, NULL))
        return 0;

    if (!FUNC3(&err_init, err_do_init))
        return 0;

    *state = FUNC0(&err_thread_local);
    if (!FUNC1(&err_thread_local, (ERR_STATE*)-1))
        return 0;

    FUNC5(saveerrno);
    return 1;
}