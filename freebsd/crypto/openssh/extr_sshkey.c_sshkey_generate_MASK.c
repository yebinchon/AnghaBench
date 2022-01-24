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
struct sshkey {int type; int /*<<< orphan*/  rsa; int /*<<< orphan*/  ecdsa; int /*<<< orphan*/  ecdsa_nid; int /*<<< orphan*/  dsa; int /*<<< orphan*/ * ed25519_sk; int /*<<< orphan*/ * ed25519_pk; } ;

/* Variables and functions */
 int /*<<< orphan*/  ED25519_PK_SZ ; 
 int /*<<< orphan*/  ED25519_SK_SZ ; 
#define  KEY_DSA 132 
#define  KEY_ECDSA 131 
#define  KEY_ED25519 130 
#define  KEY_RSA 129 
 int /*<<< orphan*/  KEY_UNSPEC ; 
#define  KEY_XMSS 128 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sshkey*) ; 
 struct sshkey* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sshkey*,int /*<<< orphan*/ ) ; 

int
FUNC8(int type, u_int bits, struct sshkey **keyp)
{
	struct sshkey *k;
	int ret = SSH_ERR_INTERNAL_ERROR;

	if (keyp == NULL)
		return SSH_ERR_INVALID_ARGUMENT;
	*keyp = NULL;
	if ((k = FUNC6(KEY_UNSPEC)) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	switch (type) {
	case KEY_ED25519:
		if ((k->ed25519_pk = FUNC3(ED25519_PK_SZ)) == NULL ||
		    (k->ed25519_sk = FUNC3(ED25519_SK_SZ)) == NULL) {
			ret = SSH_ERR_ALLOC_FAIL;
			break;
		}
		FUNC0(k->ed25519_pk, k->ed25519_sk);
		ret = 0;
		break;
#ifdef WITH_XMSS
	case KEY_XMSS:
		ret = sshkey_xmss_generate_private_key(k, bits);
		break;
#endif /* WITH_XMSS */
#ifdef WITH_OPENSSL
	case KEY_DSA:
		ret = dsa_generate_private_key(bits, &k->dsa);
		break;
# ifdef OPENSSL_HAS_ECC
	case KEY_ECDSA:
		ret = ecdsa_generate_private_key(bits, &k->ecdsa_nid,
		    &k->ecdsa);
		break;
# endif /* OPENSSL_HAS_ECC */
	case KEY_RSA:
		ret = rsa_generate_private_key(bits, &k->rsa);
		break;
#endif /* WITH_OPENSSL */
	default:
		ret = SSH_ERR_INVALID_ARGUMENT;
	}
	if (ret == 0) {
		k->type = type;
		*keyp = k;
	} else
		FUNC5(k);
	return ret;
}