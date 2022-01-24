#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
struct sshkey {TYPE_1__* cert; } ;
struct sshbuf {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  type; } ;
struct TYPE_4__ {scalar_t__ type; char* key_id; scalar_t__ nprincipals; char** principals; struct sshbuf* certblob; TYPE_2__* signature_key; struct sshbuf* extensions; struct sshbuf* critical; int /*<<< orphan*/  valid_before; int /*<<< orphan*/  valid_after; int /*<<< orphan*/  serial; } ;

/* Variables and functions */
 scalar_t__ SSH2_CERT_TYPE_HOST ; 
 scalar_t__ SSH2_CERT_TYPE_USER ; 
 scalar_t__ SSHKEY_CERT_MAX_PRINCIPALS ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_FORMAT ; 
 int SSH_ERR_KEY_CERT_INVALID_SIGN_KEY ; 
 int SSH_ERR_KEY_CERT_UNKNOWN_TYPE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char** FUNC1 (char**,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sshbuf*) ; 
 int FUNC3 (struct sshbuf*,struct sshbuf**) ; 
 int FUNC4 (struct sshbuf*,char**,size_t*) ; 
 int FUNC5 (struct sshbuf*,char**,size_t*) ; 
 int FUNC6 (struct sshbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct sshbuf*,scalar_t__*) ; 
 int FUNC8 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct sshbuf*) ; 
 int FUNC11 (struct sshbuf*,struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct sshbuf*) ; 
 scalar_t__ FUNC13 (struct sshbuf*,TYPE_2__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_2__*,char*,size_t,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(struct sshbuf *b, struct sshkey *key, struct sshbuf *certbuf)
{
	struct sshbuf *principals = NULL, *crit = NULL;
	struct sshbuf *exts = NULL, *ca = NULL;
	u_char *sig = NULL;
	size_t signed_len = 0, slen = 0, kidlen = 0;
	int ret = SSH_ERR_INTERNAL_ERROR;

	/* Copy the entire key blob for verification and later serialisation */
	if ((ret = FUNC11(key->cert->certblob, certbuf)) != 0)
		return ret;

	/* Parse body of certificate up to signature */
	if ((ret = FUNC8(b, &key->cert->serial)) != 0 ||
	    (ret = FUNC7(b, &key->cert->type)) != 0 ||
	    (ret = FUNC4(b, &key->cert->key_id, &kidlen)) != 0 ||
	    (ret = FUNC3(b, &principals)) != 0 ||
	    (ret = FUNC8(b, &key->cert->valid_after)) != 0 ||
	    (ret = FUNC8(b, &key->cert->valid_before)) != 0 ||
	    (ret = FUNC3(b, &crit)) != 0 ||
	    (ret = FUNC3(b, &exts)) != 0 ||
	    (ret = FUNC6(b, NULL, NULL)) != 0 ||
	    (ret = FUNC3(b, &ca)) != 0) {
		/* XXX debug print error for ret */
		ret = SSH_ERR_INVALID_FORMAT;
		goto out;
	}

	/* Signature is left in the buffer so we can calculate this length */
	signed_len = FUNC9(key->cert->certblob) - FUNC9(b);

	if ((ret = FUNC5(b, &sig, &slen)) != 0) {
		ret = SSH_ERR_INVALID_FORMAT;
		goto out;
	}

	if (key->cert->type != SSH2_CERT_TYPE_USER &&
	    key->cert->type != SSH2_CERT_TYPE_HOST) {
		ret = SSH_ERR_KEY_CERT_UNKNOWN_TYPE;
		goto out;
	}

	/* Parse principals section */
	while (FUNC9(principals) > 0) {
		char *principal = NULL;
		char **oprincipals = NULL;

		if (key->cert->nprincipals >= SSHKEY_CERT_MAX_PRINCIPALS) {
			ret = SSH_ERR_INVALID_FORMAT;
			goto out;
		}
		if ((ret = FUNC4(principals, &principal,
		    NULL)) != 0) {
			ret = SSH_ERR_INVALID_FORMAT;
			goto out;
		}
		oprincipals = key->cert->principals;
		key->cert->principals = FUNC1(key->cert->principals,
		    key->cert->nprincipals, key->cert->nprincipals + 1,
		    sizeof(*key->cert->principals));
		if (key->cert->principals == NULL) {
			FUNC0(principal);
			key->cert->principals = oprincipals;
			ret = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		key->cert->principals[key->cert->nprincipals++] = principal;
	}

	/*
	 * Stash a copies of the critical options and extensions sections
	 * for later use.
	 */
	if ((ret = FUNC11(key->cert->critical, crit)) != 0 ||
	    (exts != NULL &&
	    (ret = FUNC11(key->cert->extensions, exts)) != 0))
		goto out;

	/*
	 * Validate critical options and extensions sections format.
	 */
	while (FUNC9(crit) != 0) {
		if ((ret = FUNC6(crit, NULL, NULL)) != 0 ||
		    (ret = FUNC6(crit, NULL, NULL)) != 0) {
			FUNC12(key->cert->critical);
			ret = SSH_ERR_INVALID_FORMAT;
			goto out;
		}
	}
	while (exts != NULL && FUNC9(exts) != 0) {
		if ((ret = FUNC6(exts, NULL, NULL)) != 0 ||
		    (ret = FUNC6(exts, NULL, NULL)) != 0) {
			FUNC12(key->cert->extensions);
			ret = SSH_ERR_INVALID_FORMAT;
			goto out;
		}
	}

	/* Parse CA key and check signature */
	if (FUNC13(ca, &key->cert->signature_key, 0) != 0) {
		ret = SSH_ERR_KEY_CERT_INVALID_SIGN_KEY;
		goto out;
	}
	if (!FUNC14(key->cert->signature_key->type)) {
		ret = SSH_ERR_KEY_CERT_INVALID_SIGN_KEY;
		goto out;
	}
	if ((ret = FUNC15(key->cert->signature_key, sig, slen,
	    FUNC10(key->cert->certblob), signed_len, NULL, 0)) != 0)
		goto out;

	/* Success */
	ret = 0;
 out:
	FUNC2(ca);
	FUNC2(crit);
	FUNC2(exts);
	FUNC2(principals);
	FUNC0(sig);
	return ret;
}