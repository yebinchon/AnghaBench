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
typedef  unsigned char const u8 ;
struct dpp_bootstrap_info {unsigned char const* pubkey_hash; int /*<<< orphan*/ * pubkey; int /*<<< orphan*/  curve; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  X509_PUBKEY ;
typedef  int /*<<< orphan*/  X509_ALGOR ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  const ASN1_OBJECT ;

/* Variables and functions */
 scalar_t__ EVP_PKEY_EC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC3 (char*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int SHA256_MAC_LEN ; 
 int V_ASN1_OBJECT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**,int*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/  const**,unsigned char const**,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC8 (unsigned char const*,int,size_t*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned char const**,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char const*) ; 
 char* FUNC12 (char const*,char) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (int,unsigned char const**,size_t*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC17(struct dpp_bootstrap_info *bi, const char *info)
{
	const char *end;
	u8 *data;
	size_t data_len;
	EVP_PKEY *pkey;
	const unsigned char *p;
	int res;
	X509_PUBKEY *pub = NULL;
	ASN1_OBJECT *ppkalg;
	const unsigned char *pk;
	int ppklen;
	X509_ALGOR *pa;
#if OPENSSL_VERSION_NUMBER < 0x10100000L || \
	(defined(LIBRESSL_VERSION_NUMBER) && \
	 LIBRESSL_VERSION_NUMBER < 0x20800000L)
	ASN1_OBJECT *pa_oid;
#else
	const ASN1_OBJECT *pa_oid;
#endif
	const void *pval;
	int ptype;
	const ASN1_OBJECT *poid;
	char buf[100];

	end = FUNC12(info, ';');
	if (!end)
		return -1;

	data = FUNC8((const unsigned char *) info, end - info,
			     &data_len);
	if (!data) {
		FUNC16(MSG_DEBUG,
			   "DPP: Invalid base64 encoding on URI public-key");
		return -1;
	}
	FUNC15(MSG_DEBUG, "DPP: Base64 decoded URI public-key",
		    data, data_len);

	if (FUNC14(1, (const u8 **) &data, &data_len,
			  bi->pubkey_hash) < 0) {
		FUNC16(MSG_DEBUG, "DPP: Failed to hash public key");
		FUNC11(data);
		return -1;
	}
	FUNC15(MSG_DEBUG, "DPP: Public key hash",
		    bi->pubkey_hash, SHA256_MAC_LEN);

	/* DER encoded ASN.1 SubjectPublicKeyInfo
	 *
	 * SubjectPublicKeyInfo  ::=  SEQUENCE  {
	 *      algorithm            AlgorithmIdentifier,
	 *      subjectPublicKey     BIT STRING  }
	 *
	 * AlgorithmIdentifier  ::=  SEQUENCE  {
	 *      algorithm               OBJECT IDENTIFIER,
	 *      parameters              ANY DEFINED BY algorithm OPTIONAL  }
	 *
	 * subjectPublicKey = compressed format public key per ANSI X9.63
	 * algorithm = ecPublicKey (1.2.840.10045.2.1)
	 * parameters = shall be present and shall be OBJECT IDENTIFIER; e.g.,
	 *       prime256v1 (1.2.840.10045.3.1.7)
	 */

	p = data;
	pkey = FUNC9(NULL, &p, data_len);
	FUNC11(data);

	if (!pkey) {
		FUNC16(MSG_DEBUG,
			   "DPP: Could not parse URI public-key SubjectPublicKeyInfo");
		return -1;
	}

	if (FUNC2(FUNC1(pkey)) != EVP_PKEY_EC) {
		FUNC16(MSG_DEBUG,
			   "DPP: SubjectPublicKeyInfo does not describe an EC key");
		FUNC0(pkey);
		return -1;
	}

	res = FUNC7(&pub, pkey);
	if (res != 1) {
		FUNC16(MSG_DEBUG, "DPP: Could not set pubkey");
		goto fail;
	}

	res = FUNC6(&ppkalg, &pk, &ppklen, &pa, pub);
	if (res != 1) {
		FUNC16(MSG_DEBUG,
			   "DPP: Could not extract SubjectPublicKeyInfo parameters");
		goto fail;
	}
	res = FUNC3(buf, sizeof(buf), ppkalg, 0);
	if (res < 0 || (size_t) res >= sizeof(buf)) {
		FUNC16(MSG_DEBUG,
			   "DPP: Could not extract SubjectPublicKeyInfo algorithm");
		goto fail;
	}
	FUNC16(MSG_DEBUG, "DPP: URI subjectPublicKey algorithm: %s", buf);
	if (FUNC13(buf, "id-ecPublicKey") != 0) {
		FUNC16(MSG_DEBUG,
			   "DPP: Unsupported SubjectPublicKeyInfo algorithm");
		goto fail;
	}

	FUNC4(&pa_oid, &ptype, (void *) &pval, pa);
	if (ptype != V_ASN1_OBJECT) {
		FUNC16(MSG_DEBUG,
			   "DPP: SubjectPublicKeyInfo parameters did not contain an OID");
		goto fail;
	}
	poid = pval;
	res = FUNC3(buf, sizeof(buf), poid, 0);
	if (res < 0 || (size_t) res >= sizeof(buf)) {
		FUNC16(MSG_DEBUG,
			   "DPP: Could not extract SubjectPublicKeyInfo parameters OID");
		goto fail;
	}
	FUNC16(MSG_DEBUG, "DPP: URI subjectPublicKey parameters: %s", buf);
	bi->curve = FUNC10(poid);
	if (!bi->curve) {
		FUNC16(MSG_DEBUG,
			   "DPP: Unsupported SubjectPublicKeyInfo curve: %s",
			   buf);
		goto fail;
	}

	FUNC15(MSG_DEBUG, "DPP: URI subjectPublicKey", pk, ppklen);

	FUNC5(pub);
	bi->pubkey = pkey;
	return 0;
fail:
	FUNC5(pub);
	FUNC0(pkey);
	return -1;
}