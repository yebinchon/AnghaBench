#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_short ;
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_9__ {size_t secretsize; int /*<<< orphan*/  lifetime; int /*<<< orphan*/ * keyacclist; int /*<<< orphan*/ * secret; void* type; void* flags; int /*<<< orphan*/  keyid; } ;
typedef  TYPE_1__ symkey ;
typedef  int /*<<< orphan*/  keyid_t ;
struct TYPE_10__ {int /*<<< orphan*/  f; } ;
typedef  int /*<<< orphan*/  KeyAccT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  authfreekeys ; 
 int authnumfreekeys ; 
 int /*<<< orphan*/  authnumkeys ; 
 int /*<<< orphan*/  hlink ; 
 TYPE_1__** key_hash ; 
 int /*<<< orphan*/  key_listhead ; 
 TYPE_2__ llink ; 

__attribute__((used)) static void
FUNC6(
	keyid_t		id,
	u_short		flags,
	u_short		type,
	u_long		lifetime,
	size_t		secretsize,
	u_char *	secret,
	KeyAccT *	ka
	)
{
	symkey *	sk;
	symkey **	bucket;

	bucket = &key_hash[FUNC1(id)];


	if (authnumfreekeys < 1)
		FUNC5(-1);
	FUNC4(sk, authfreekeys, llink.f);
	FUNC0(sk != NULL);
	sk->keyid = id;
	sk->flags = flags;
	sk->type = type;
	sk->secretsize = secretsize;
	sk->secret = secret;
	sk->keyacclist = ka;
	sk->lifetime = lifetime;
	FUNC2(*bucket, sk, hlink);
	FUNC3(key_listhead, sk, llink);
	authnumfreekeys--;
	authnumkeys++;
}