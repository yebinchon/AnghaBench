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
struct sshkey {int type; int ecdsa_nid; char* xmss_pk; char* xmss_state; char* xmss_name; char* xmss_filename; int /*<<< orphan*/ * ed25519_pk; int /*<<< orphan*/ * ecdsa; int /*<<< orphan*/ * dsa; int /*<<< orphan*/ * rsa; int /*<<< orphan*/ * cert; } ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ED25519_PK_SZ ; 
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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_EC_CURVE_MISMATCH ; 
 int SSH_ERR_EXPECTED_CERT ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_INVALID_FORMAT ; 
 int SSH_ERR_KEY_TYPE_MISMATCH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,size_t,int*) ; 
 int FUNC9 (struct sshbuf*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct sshbuf*) ; 
 struct sshbuf* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sshkey*) ; 
 int FUNC14 (struct sshbuf*,struct sshkey**) ; 
 scalar_t__ FUNC15 (struct sshkey*) ; 
 int const FUNC16 (int) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC17 (char*,char*) ; 
 size_t FUNC18 (char*) ; 
 char* FUNC19 (char*,size_t) ; 

int
FUNC20(struct sshkey *ret, char **cpp)
{
	struct sshkey *k;
	char *cp, *blobcopy;
	size_t space;
	int r, type, curve_nid = -1;
	struct sshbuf *blob;

	if (ret == NULL)
		return SSH_ERR_INVALID_ARGUMENT;

	switch (ret->type) {
	case KEY_UNSPEC:
	case KEY_RSA:
	case KEY_DSA:
	case KEY_ECDSA:
	case KEY_ED25519:
	case KEY_DSA_CERT:
	case KEY_ECDSA_CERT:
	case KEY_RSA_CERT:
	case KEY_ED25519_CERT:
#ifdef WITH_XMSS
	case KEY_XMSS:
	case KEY_XMSS_CERT:
#endif /* WITH_XMSS */
		break; /* ok */
	default:
		return SSH_ERR_INVALID_ARGUMENT;
	}

	/* Decode type */
	cp = *cpp;
	space = FUNC17(cp, " \t");
	if (space == FUNC18(cp))
		return SSH_ERR_INVALID_FORMAT;
	if ((type = FUNC8(cp, space, &curve_nid)) == KEY_UNSPEC)
		return SSH_ERR_INVALID_FORMAT;

	/* skip whitespace */
	for (cp += space; *cp == ' ' || *cp == '\t'; cp++)
		;
	if (*cp == '\0')
		return SSH_ERR_INVALID_FORMAT;
	if (ret->type != KEY_UNSPEC && ret->type != type)
		return SSH_ERR_KEY_TYPE_MISMATCH;
	if ((blob = FUNC11()) == NULL)
		return SSH_ERR_ALLOC_FAIL;

	/* find end of keyblob and decode */
	space = FUNC17(cp, " \t");
	if ((blobcopy = FUNC19(cp, space)) == NULL) {
		FUNC10(blob);
		return SSH_ERR_ALLOC_FAIL;
	}
	if ((r = FUNC9(blob, blobcopy)) != 0) {
		FUNC6(blobcopy);
		FUNC10(blob);
		return r;
	}
	FUNC6(blobcopy);
	if ((r = FUNC14(blob, &k)) != 0) {
		FUNC10(blob);
		return r;
	}
	FUNC10(blob);

	/* skip whitespace and leave cp at start of comment */
	for (cp += space; *cp == ' ' || *cp == '\t'; cp++)
		;

	/* ensure type of blob matches type at start of line */
	if (k->type != type) {
		FUNC13(k);
		return SSH_ERR_KEY_TYPE_MISMATCH;
	}
	if (FUNC16(type) == KEY_ECDSA && curve_nid != k->ecdsa_nid) {
		FUNC13(k);
		return SSH_ERR_EC_CURVE_MISMATCH;
	}

	/* Fill in ret from parsed key */
	ret->type = type;
	if (FUNC15(ret)) {
		if (!FUNC15(k)) {
			FUNC13(k);
			return SSH_ERR_EXPECTED_CERT;
		}
		if (ret->cert != NULL)
			FUNC5(ret->cert);
		ret->cert = k->cert;
		k->cert = NULL;
	}
	switch (FUNC16(ret->type)) {
#ifdef WITH_OPENSSL
	case KEY_RSA:
		RSA_free(ret->rsa);
		ret->rsa = k->rsa;
		k->rsa = NULL;
#ifdef DEBUG_PK
		RSA_print_fp(stderr, ret->rsa, 8);
#endif
		break;
	case KEY_DSA:
		DSA_free(ret->dsa);
		ret->dsa = k->dsa;
		k->dsa = NULL;
#ifdef DEBUG_PK
		DSA_print_fp(stderr, ret->dsa, 8);
#endif
		break;
# ifdef OPENSSL_HAS_ECC
	case KEY_ECDSA:
		EC_KEY_free(ret->ecdsa);
		ret->ecdsa = k->ecdsa;
		ret->ecdsa_nid = k->ecdsa_nid;
		k->ecdsa = NULL;
		k->ecdsa_nid = -1;
#ifdef DEBUG_PK
		sshkey_dump_ec_key(ret->ecdsa);
#endif
		break;
# endif /* OPENSSL_HAS_ECC */
#endif /* WITH_OPENSSL */
	case KEY_ED25519:
		FUNC7(ret->ed25519_pk, ED25519_PK_SZ);
		ret->ed25519_pk = k->ed25519_pk;
		k->ed25519_pk = NULL;
#ifdef DEBUG_PK
		/* XXX */
#endif
		break;
#ifdef WITH_XMSS
	case KEY_XMSS:
		free(ret->xmss_pk);
		ret->xmss_pk = k->xmss_pk;
		k->xmss_pk = NULL;
		free(ret->xmss_state);
		ret->xmss_state = k->xmss_state;
		k->xmss_state = NULL;
		free(ret->xmss_name);
		ret->xmss_name = k->xmss_name;
		k->xmss_name = NULL;
		free(ret->xmss_filename);
		ret->xmss_filename = k->xmss_filename;
		k->xmss_filename = NULL;
#ifdef DEBUG_PK
		/* XXX */
#endif
		break;
#endif /* WITH_XMSS */
	default:
		FUNC13(k);
		return SSH_ERR_INTERNAL_ERROR;
	}
	FUNC13(k);

	/* success */
	*cpp = cp;
	return 0;
}