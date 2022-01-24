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
typedef  size_t u_int ;
struct kex {struct kex* name; struct kex* hostkey_alg; struct kex* failed_choice; struct kex* server_version_string; struct kex* client_version_string; struct kex* session_id; int /*<<< orphan*/  my; int /*<<< orphan*/  peer; int /*<<< orphan*/ ** newkeys; int /*<<< orphan*/  ec_client_key; int /*<<< orphan*/  dh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t MODE_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct kex*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct kex *kex)
{
	u_int mode;

#ifdef WITH_OPENSSL
	DH_free(kex->dh);
#ifdef OPENSSL_HAS_ECC
	EC_KEY_free(kex->ec_client_key);
#endif /* OPENSSL_HAS_ECC */
#endif /* WITH_OPENSSL */
	for (mode = 0; mode < MODE_MAX; mode++) {
		FUNC3(kex->newkeys[mode]);
		kex->newkeys[mode] = NULL;
	}
	FUNC4(kex->peer);
	FUNC4(kex->my);
	FUNC2(kex->session_id);
	FUNC2(kex->client_version_string);
	FUNC2(kex->server_version_string);
	FUNC2(kex->failed_choice);
	FUNC2(kex->hostkey_alg);
	FUNC2(kex->name);
	FUNC2(kex);
}