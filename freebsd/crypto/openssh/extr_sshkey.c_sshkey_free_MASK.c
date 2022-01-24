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
struct sshkey {int type; int /*<<< orphan*/  cert; int /*<<< orphan*/ * xmss_filename; int /*<<< orphan*/ * xmss_name; struct sshkey* xmss_sk; struct sshkey* xmss_pk; struct sshkey* ed25519_sk; struct sshkey* ed25519_pk; int /*<<< orphan*/ * ecdsa; int /*<<< orphan*/ * dsa; int /*<<< orphan*/ * rsa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int ED25519_PK_SZ ; 
 int ED25519_SK_SZ ; 
#define  KEY_DSA 138 
#define  KEY_DSA_CERT 137 
#define  KEY_ECDSA 136 
#define  KEY_ECDSA_CERT 135 
#define  KEY_ED25519 134 
#define  KEY_ED25519_CERT 133 
#define  KEY_RSA 132 
#define  KEY_RSA_CERT 131 
#define  KEY_UNSPEC 130 
#define  KEY_XMSS 129 
#define  KEY_XMSS_CERT 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sshkey*,int) ; 
 scalar_t__ FUNC6 (struct sshkey*) ; 
 int /*<<< orphan*/  FUNC7 (struct sshkey*) ; 
 int FUNC8 (struct sshkey*) ; 
 int FUNC9 (struct sshkey*) ; 

void
FUNC10(struct sshkey *k)
{
	if (k == NULL)
		return;
	switch (k->type) {
#ifdef WITH_OPENSSL
	case KEY_RSA:
	case KEY_RSA_CERT:
		RSA_free(k->rsa);
		k->rsa = NULL;
		break;
	case KEY_DSA:
	case KEY_DSA_CERT:
		DSA_free(k->dsa);
		k->dsa = NULL;
		break;
# ifdef OPENSSL_HAS_ECC
	case KEY_ECDSA:
	case KEY_ECDSA_CERT:
		EC_KEY_free(k->ecdsa);
		k->ecdsa = NULL;
		break;
# endif /* OPENSSL_HAS_ECC */
#endif /* WITH_OPENSSL */
	case KEY_ED25519:
	case KEY_ED25519_CERT:
		FUNC5(k->ed25519_pk, ED25519_PK_SZ);
		k->ed25519_pk = NULL;
		FUNC5(k->ed25519_sk, ED25519_SK_SZ);
		k->ed25519_sk = NULL;
		break;
#ifdef WITH_XMSS
	case KEY_XMSS:
	case KEY_XMSS_CERT:
		freezero(k->xmss_pk, sshkey_xmss_pklen(k));
		k->xmss_pk = NULL;
		freezero(k->xmss_sk, sshkey_xmss_sklen(k));
		k->xmss_sk = NULL;
		sshkey_xmss_free_state(k);
		free(k->xmss_name);
		k->xmss_name = NULL;
		free(k->xmss_filename);
		k->xmss_filename = NULL;
		break;
#endif /* WITH_XMSS */
	case KEY_UNSPEC:
		break;
	default:
		break;
	}
	if (FUNC6(k))
		FUNC3(k->cert);
	FUNC5(k, sizeof(*k));
}