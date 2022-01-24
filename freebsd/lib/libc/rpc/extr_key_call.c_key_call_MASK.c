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
typedef  int /*<<< orphan*/  xdrproc_t ;
typedef  int /*<<< orphan*/  u_long ;
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  des_block ;
typedef  int /*<<< orphan*/  cryptkeyres ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_DECRYPT_PK ; 
 int /*<<< orphan*/  KEY_ENCRYPT_PK ; 
 int /*<<< orphan*/  KEY_GEN ; 
 int /*<<< orphan*/  KEY_GET_CONV ; 
 int /*<<< orphan*/  KEY_NET_GET ; 
 int /*<<< orphan*/  KEY_NET_PUT ; 
 scalar_t__ RPC_SUCCESS ; 
 int /*<<< orphan*/  TOTAL_TIMEOUT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,struct timeval) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(u_long proc, xdrproc_t xdr_arg, void *arg, xdrproc_t xdr_rslt,
    void *rslt)
{
	CLIENT *clnt;
	struct timeval wait_time;

	if (proc == KEY_ENCRYPT_PK && &__key_encryptsession_pk_LOCAL) {
		cryptkeyres *res;
		res = FUNC1)(FUNC4(), arg);
		*(cryptkeyres*)rslt = *res;
		return (1);
	} else if (proc == KEY_DECRYPT_PK && &__key_decryptsession_pk_LOCAL) {
		cryptkeyres *res;
		res = FUNC0)(FUNC4(), arg);
		*(cryptkeyres*)rslt = *res;
		return (1);
	} else if (proc == KEY_GEN && &__key_gendes_LOCAL) {
		des_block *res;
		res = FUNC2)(FUNC4(), 0);
		*(des_block*)rslt = *res;
		return (1);
	}

	if ((proc == KEY_ENCRYPT_PK) || (proc == KEY_DECRYPT_PK) ||
	    (proc == KEY_NET_GET) || (proc == KEY_NET_PUT) ||
	    (proc == KEY_GET_CONV))
		clnt = FUNC5(2); /* talk to version 2 */
	else
		clnt = FUNC5(1); /* talk to version 1 */

	if (clnt == NULL) {
		return (0);
	}

	wait_time.tv_sec = TOTAL_TIMEOUT;
	wait_time.tv_usec = 0;

	if (FUNC3(clnt, proc, xdr_arg, arg, xdr_rslt, rslt,
		wait_time) == RPC_SUCCESS) {
		return (1);
	} else {
		return (0);
	}
}