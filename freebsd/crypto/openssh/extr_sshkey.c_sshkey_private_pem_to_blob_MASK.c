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
typedef  int /*<<< orphan*/  u_char ;
struct sshkey {int type; int /*<<< orphan*/  rsa; int /*<<< orphan*/  ecdsa; int /*<<< orphan*/  dsa; } ;
struct sshbuf {int dummy; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
#define  KEY_DSA 130 
#define  KEY_ECDSA 129 
#define  KEY_RSA 128 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 
 int SSH_ERR_PASSPHRASE_TOO_SHORT ; 
 int FUNC8 (struct sshbuf*,char*,int) ; 
 int FUNC9 (char const*) ; 

__attribute__((used)) static int
FUNC10(struct sshkey *key, struct sshbuf *blob,
    const char *_passphrase, const char *comment)
{
	int success, r;
	int blen, len = FUNC9(_passphrase);
	u_char *passphrase = (len > 0) ? (u_char *)_passphrase : NULL;
	const EVP_CIPHER *cipher = (len > 0) ? FUNC4() : NULL;
	char *bptr;
	BIO *bio = NULL;

	if (len > 0 && len <= 4)
		return SSH_ERR_PASSPHRASE_TOO_SHORT;
	if ((bio = FUNC2(FUNC3())) == NULL)
		return SSH_ERR_ALLOC_FAIL;

	switch (key->type) {
	case KEY_DSA:
		success = FUNC5(bio, key->dsa,
		    cipher, passphrase, len, NULL, NULL);
		break;
#ifdef OPENSSL_HAS_ECC
	case KEY_ECDSA:
		success = PEM_write_bio_ECPrivateKey(bio, key->ecdsa,
		    cipher, passphrase, len, NULL, NULL);
		break;
#endif
	case KEY_RSA:
		success = FUNC7(bio, key->rsa,
		    cipher, passphrase, len, NULL, NULL);
		break;
	default:
		success = 0;
		break;
	}
	if (success == 0) {
		r = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}
	if ((blen = FUNC1(bio, &bptr)) <= 0) {
		r = SSH_ERR_INTERNAL_ERROR;
		goto out;
	}
	if ((r = FUNC8(blob, bptr, blen)) != 0)
		goto out;
	r = 0;
 out:
	FUNC0(bio);
	return r;
}