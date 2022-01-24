#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sshkey {scalar_t__ type; } ;
struct ssh {TYPE_1__* kex; } ;
struct TYPE_4__ {char* pubkey_key_types; } ;
struct TYPE_3__ {char* server_sig_algs; } ;

/* Variables and functions */
 scalar_t__ KEY_RSA ; 
 scalar_t__ KEY_RSA_CERT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 TYPE_2__ options ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sshkey const*) ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (char**,char*) ; 
 char* FUNC6 (char*) ; 

__attribute__((used)) static char *
FUNC7(struct ssh *ssh, const struct sshkey *key)
{
	char *allowed, *oallowed, *cp, *tmp, *alg = NULL;

	/*
	 * The signature algorithm will only differ from the key algorithm
	 * for RSA keys/certs and when the server advertises support for
	 * newer (SHA2) algorithms.
	 */
	if (ssh == NULL || ssh->kex->server_sig_algs == NULL ||
	    (key->type != KEY_RSA && key->type != KEY_RSA_CERT)) {
		/* Filter base key signature alg against our configuration */
		return FUNC1(FUNC3(key),
		    options.pubkey_key_types, NULL);
	}

	/*
	 * For RSA keys/certs, since these might have a different sig type:
	 * find the first entry in PubkeyAcceptedKeyTypes of the right type
	 * that also appears in the supported signature algorithms list from
	 * the server.
	 */
	oallowed = allowed = FUNC6(options.pubkey_key_types);
	while ((cp = FUNC5(&allowed, ",")) != NULL) {
		if (FUNC4(cp) != key->type)
			continue;
		tmp = FUNC1(FUNC2(cp), ssh->kex->server_sig_algs, NULL);
		if (tmp != NULL)
			alg = FUNC6(cp);
		FUNC0(tmp);
		if (alg != NULL)
			break;
	}
	FUNC0(oallowed);
	return alg;
}