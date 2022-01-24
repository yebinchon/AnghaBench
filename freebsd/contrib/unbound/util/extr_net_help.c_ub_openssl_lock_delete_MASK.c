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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ub_openssl_locks ; 

void FUNC6(void)
{
#if defined(HAVE_SSL) && defined(OPENSSL_THREADS) && !defined(THREADS_DISABLED) && defined(CRYPTO_LOCK) && OPENSSL_VERSION_NUMBER < 0x10100000L
	int i;
	if(!ub_openssl_locks)
		return;
#  ifdef HAVE_CRYPTO_THREADID_SET_CALLBACK
	CRYPTO_THREADID_set_callback(NULL);
#  else
	CRYPTO_set_id_callback(NULL);
#  endif
	CRYPTO_set_locking_callback(NULL);
	for(i=0; i<CRYPTO_num_locks(); i++) {
		lock_basic_destroy(&ub_openssl_locks[i]);
	}
	free(ub_openssl_locks);
#endif /* OPENSSL_THREADS */
}