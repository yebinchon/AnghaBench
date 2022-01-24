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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct sshkey {int /*<<< orphan*/ * ed25519_sk; int /*<<< orphan*/  type; } ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 size_t INT_MAX ; 
 scalar_t__ KEY_ED25519 ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned long long*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 size_t crypto_sign_ed25519_BYTES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sshbuf*) ; 
 size_t FUNC6 (struct sshbuf*) ; 
 struct sshbuf* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct sshbuf*) ; 
 int FUNC9 (struct sshbuf*,char*) ; 
 int FUNC10 (struct sshbuf*,int /*<<< orphan*/ *,unsigned long long) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

int
FUNC12(const struct sshkey *key, u_char **sigp, size_t *lenp,
    const u_char *data, size_t datalen, u_int compat)
{
	u_char *sig = NULL;
	size_t slen = 0, len;
	unsigned long long smlen;
	int r, ret;
	struct sshbuf *b = NULL;

	if (lenp != NULL)
		*lenp = 0;
	if (sigp != NULL)
		*sigp = NULL;

	if (key == NULL ||
	    FUNC11(key->type) != KEY_ED25519 ||
	    key->ed25519_sk == NULL ||
	    datalen >= INT_MAX - crypto_sign_ed25519_BYTES)
		return SSH_ERR_INVALID_ARGUMENT;
	smlen = slen = datalen + crypto_sign_ed25519_BYTES;
	if ((sig = FUNC3(slen)) == NULL)
		return SSH_ERR_ALLOC_FAIL;

	if ((ret = FUNC0(sig, &smlen, data, datalen,
	    key->ed25519_sk)) != 0 || smlen <= datalen) {
		r = SSH_ERR_INVALID_ARGUMENT; /* XXX better error? */
		goto out;
	}
	/* encode signature */
	if ((b = FUNC7()) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if ((r = FUNC9(b, "ssh-ed25519")) != 0 ||
	    (r = FUNC10(b, sig, smlen - datalen)) != 0)
		goto out;
	len = FUNC6(b);
	if (sigp != NULL) {
		if ((*sigp = FUNC3(len)) == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto out;
		}
		FUNC4(*sigp, FUNC8(b), len);
	}
	if (lenp != NULL)
		*lenp = len;
	/* success */
	r = 0;
 out:
	FUNC5(b);
	if (sig != NULL) {
		FUNC1(sig, slen);
		FUNC2(sig);
	}

	return r;
}