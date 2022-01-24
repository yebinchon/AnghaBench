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
typedef  scalar_t__ u_short ;
typedef  int u_char ;
struct TYPE_3__ {scalar_t__ keyid; int* secret; size_t secretsize; int /*<<< orphan*/ * keyacclist; scalar_t__ type; } ;
typedef  TYPE_1__ symkey ;
typedef  scalar_t__ keyid_t ;
typedef  int /*<<< orphan*/  KeyAccT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int USHRT_MAX ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,size_t,int*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int debug ; 
 void* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,size_t) ; 

void
FUNC11(
	keyid_t keyno,
	int	keytype,
	const u_char *key,
	size_t secretsize,
	KeyAccT *ka
	)
{
	symkey *	sk;
	u_char *	secret;
	
	FUNC0(keytype <= USHRT_MAX);
	FUNC0(secretsize < 4 * 1024);
	/*
	 * See if we already have the key.  If so just stick in the
	 * new value.
	 */
	sk = FUNC2(keyno);
	if (sk != NULL && keyno == sk->keyid) {
			/* TALOS-CAN-0054: make sure we have a new buffer! */
		if (NULL != sk->secret) {
			FUNC8(sk->secret, 0, sk->secretsize);
			FUNC5(sk->secret);
		}
		sk->secret = FUNC4(secretsize + 1);
		sk->type = (u_short)keytype;
		sk->secretsize = secretsize;
		/* make sure access lists don't leak here! */
		if (ka != sk->keyacclist) {
			FUNC6(sk->keyacclist);
			sk->keyacclist = ka;
		}
#ifndef DISABLE_BUG1243_FIX
		FUNC7(sk->secret, key, secretsize);
#else
		/* >MUST< use 'strncpy()' here! See above! */
		strncpy((char *)sk->secret, (const char *)key,
			secretsize);
#endif
		FUNC3(keyno);
		return;
	}

	/*
	 * Need to allocate new structure.  Do it.
	 */
	secret = FUNC4(secretsize + 1);
#ifndef DISABLE_BUG1243_FIX
	FUNC7(secret, key, secretsize);
#else
	/* >MUST< use 'strncpy()' here! See above! */
	strncpy((char *)secret, (const char *)key, secretsize);
#endif
	FUNC1(keyno, 0, (u_short)keytype, 0,
		    secretsize, secret, ka);
#ifdef DEBUG
	if (debug >= 4) {
		size_t	j;

		printf("auth_setkey: key %d type %d len %d ", (int)keyno,
		    keytype, (int)secretsize);
		for (j = 0; j < secretsize; j++) {
			printf("%02x", secret[j]);
		}
		printf("\n");
	}	
#endif
}