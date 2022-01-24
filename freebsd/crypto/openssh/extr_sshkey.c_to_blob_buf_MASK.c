#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sshkey {int type; char const* xmss_name; int /*<<< orphan*/ * xmss_pk; int /*<<< orphan*/ * ed25519_pk; int /*<<< orphan*/ * rsa; int /*<<< orphan*/ * ecdsa; int /*<<< orphan*/  ecdsa_nid; int /*<<< orphan*/ * dsa; TYPE_1__* cert; } ;
struct sshbuf {int dummy; } ;
typedef  enum sshkey_serialize_rep { ____Placeholder_sshkey_serialize_rep } sshkey_serialize_rep ;
struct TYPE_2__ {int /*<<< orphan*/  certblob; } ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  ED25519_PK_SZ ; 
#define  KEY_DSA 137 
#define  KEY_DSA_CERT 136 
#define  KEY_ECDSA 135 
#define  KEY_ECDSA_CERT 134 
#define  KEY_ED25519 133 
#define  KEY_ED25519_CERT 132 
#define  KEY_RSA 131 
#define  KEY_RSA_CERT 130 
#define  KEY_XMSS 129 
#define  KEY_XMSS_CERT 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int SSH_ERR_EXPECTED_CERT ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int SSH_ERR_KEY_LACKS_CERTBLOB ; 
 int SSH_ERR_KEY_TYPE_UNKNOWN ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sshbuf*,int /*<<< orphan*/  const*) ; 
 int FUNC5 (struct sshbuf*,char const*) ; 
 int FUNC6 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct sshbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sshbuf*,int /*<<< orphan*/ ) ; 
 char const* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sshkey const*) ; 
 char* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct sshkey const*) ; 
 int FUNC14 (struct sshkey const*,struct sshbuf*,int) ; 

__attribute__((used)) static int
FUNC15(const struct sshkey *key, struct sshbuf *b, int force_plain,
  enum sshkey_serialize_rep opts)
{
	int type, ret = SSH_ERR_INTERNAL_ERROR;
	const char *typename;
#ifdef WITH_OPENSSL
	const BIGNUM *rsa_n, *rsa_e, *dsa_p, *dsa_q, *dsa_g, *dsa_pub_key;
#endif /* WITH_OPENSSL */

	if (key == NULL)
		return SSH_ERR_INVALID_ARGUMENT;

	if (FUNC10(key)) {
		if (key->cert == NULL)
			return SSH_ERR_EXPECTED_CERT;
		if (FUNC3(key->cert->certblob) == 0)
			return SSH_ERR_KEY_LACKS_CERTBLOB;
	}
	type = force_plain ? FUNC12(key->type) : key->type;
	typename = FUNC11(type, key->ecdsa_nid);

	switch (type) {
#ifdef WITH_OPENSSL
	case KEY_DSA_CERT:
	case KEY_ECDSA_CERT:
	case KEY_RSA_CERT:
#endif /* WITH_OPENSSL */
	case KEY_ED25519_CERT:
#ifdef WITH_XMSS
	case KEY_XMSS_CERT:
#endif /* WITH_XMSS */
		/* Use the existing blob */
		/* XXX modified flag? */
		if ((ret = FUNC8(b, key->cert->certblob)) != 0)
			return ret;
		break;
#ifdef WITH_OPENSSL
	case KEY_DSA:
		if (key->dsa == NULL)
			return SSH_ERR_INVALID_ARGUMENT;
		DSA_get0_pqg(key->dsa, &dsa_p, &dsa_q, &dsa_g);
		DSA_get0_key(key->dsa, &dsa_pub_key, NULL);
		if ((ret = sshbuf_put_cstring(b, typename)) != 0 ||
		    (ret = sshbuf_put_bignum2(b, dsa_p)) != 0 ||
		    (ret = sshbuf_put_bignum2(b, dsa_q)) != 0 ||
		    (ret = sshbuf_put_bignum2(b, dsa_g)) != 0 ||
		    (ret = sshbuf_put_bignum2(b, dsa_pub_key)) != 0)
			return ret;
		break;
# ifdef OPENSSL_HAS_ECC
	case KEY_ECDSA:
		if (key->ecdsa == NULL)
			return SSH_ERR_INVALID_ARGUMENT;
		if ((ret = sshbuf_put_cstring(b, typename)) != 0 ||
		    (ret = sshbuf_put_cstring(b,
		    sshkey_curve_nid_to_name(key->ecdsa_nid))) != 0 ||
		    (ret = sshbuf_put_eckey(b, key->ecdsa)) != 0)
			return ret;
		break;
# endif
	case KEY_RSA:
		if (key->rsa == NULL)
			return SSH_ERR_INVALID_ARGUMENT;
		RSA_get0_key(key->rsa, &rsa_n, &rsa_e, NULL);
		if ((ret = sshbuf_put_cstring(b, typename)) != 0 ||
		    (ret = sshbuf_put_bignum2(b, rsa_e)) != 0 ||
		    (ret = sshbuf_put_bignum2(b, rsa_n)) != 0)
			return ret;
		break;
#endif /* WITH_OPENSSL */
	case KEY_ED25519:
		if (key->ed25519_pk == NULL)
			return SSH_ERR_INVALID_ARGUMENT;
		if ((ret = FUNC5(b, typename)) != 0 ||
		    (ret = FUNC7(b,
		    key->ed25519_pk, ED25519_PK_SZ)) != 0)
			return ret;
		break;
#ifdef WITH_XMSS
	case KEY_XMSS:
		if (key->xmss_name == NULL || key->xmss_pk == NULL ||
		    sshkey_xmss_pklen(key) == 0)
			return SSH_ERR_INVALID_ARGUMENT;
		if ((ret = sshbuf_put_cstring(b, typename)) != 0 ||
		    (ret = sshbuf_put_cstring(b, key->xmss_name)) != 0 ||
		    (ret = sshbuf_put_string(b,
		    key->xmss_pk, sshkey_xmss_pklen(key))) != 0 ||
		    (ret = sshkey_xmss_serialize_pk_info(key, b, opts)) != 0)
			return ret;
		break;
#endif /* WITH_XMSS */
	default:
		return SSH_ERR_KEY_TYPE_UNKNOWN;
	}
	return 0;
}