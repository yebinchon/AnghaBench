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
struct wpabuf {int dummy; } ;
struct dpp_signed_connector_info {unsigned char* payload; size_t payload_len; } ;
struct dpp_curve_params {int /*<<< orphan*/  jwk_crv; } ;
typedef  enum dpp_status_error { ____Placeholder_dpp_status_error } dpp_status_error ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  ECDSA_SIG ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int DPP_STATUS_INVALID_CONNECTOR ; 
 int DPP_STATUS_NO_MATCH ; 
 int DPP_STATUS_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC17 (unsigned char*) ; 
 scalar_t__ SHA256_MAC_LEN ; 
 void* FUNC18 (unsigned char const*,int,size_t*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 struct dpp_curve_params* FUNC20 (int) ; 
 struct wpabuf* FUNC21 (struct dpp_curve_params const*,unsigned char*,size_t,int /*<<< orphan*/  const**) ; 
 int FUNC22 (int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/  FUNC23 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC24 (struct dpp_signed_connector_info*,int /*<<< orphan*/ ,int) ; 
 char* FUNC25 (char const*,char) ; 
 int FUNC26 (char const*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC30 (struct wpabuf*) ; 
 scalar_t__ FUNC31 (struct wpabuf*) ; 

__attribute__((used)) static enum dpp_status_error
FUNC32(struct dpp_signed_connector_info *info,
			     EVP_PKEY *csign_pub, const char *connector)
{
	enum dpp_status_error ret = 255;
	const char *pos, *end, *signed_start, *signed_end;
	struct wpabuf *kid = NULL;
	unsigned char *prot_hdr = NULL, *signature = NULL;
	size_t prot_hdr_len = 0, signature_len = 0;
	const EVP_MD *sign_md = NULL;
	unsigned char *der = NULL;
	int der_len;
	int res;
	EVP_MD_CTX *md_ctx = NULL;
	ECDSA_SIG *sig = NULL;
	BIGNUM *r = NULL, *s = NULL;
	const struct dpp_curve_params *curve;
	EC_KEY *eckey;
	const EC_GROUP *group;
	int nid;

	eckey = FUNC16(csign_pub);
	if (!eckey)
		goto fail;
	group = FUNC7(eckey);
	if (!group)
		goto fail;
	nid = FUNC5(group);
	curve = FUNC20(nid);
	if (!curve)
		goto fail;
	FUNC29(MSG_DEBUG, "DPP: C-sign-key group: %s", curve->jwk_crv);
	FUNC24(info, 0, sizeof(*info));

	signed_start = pos = connector;
	end = FUNC25(pos, '.');
	if (!end) {
		FUNC29(MSG_DEBUG, "DPP: Missing dot(1) in signedConnector");
		ret = DPP_STATUS_INVALID_CONNECTOR;
		goto fail;
	}
	prot_hdr = FUNC18((const unsigned char *) pos,
				     end - pos, &prot_hdr_len);
	if (!prot_hdr) {
		FUNC29(MSG_DEBUG,
			   "DPP: Failed to base64url decode signedConnector JWS Protected Header");
		ret = DPP_STATUS_INVALID_CONNECTOR;
		goto fail;
	}
	FUNC28(MSG_DEBUG,
			  "DPP: signedConnector - JWS Protected Header",
			  prot_hdr, prot_hdr_len);
	kid = FUNC21(curve, prot_hdr, prot_hdr_len, &sign_md);
	if (!kid) {
		ret = DPP_STATUS_INVALID_CONNECTOR;
		goto fail;
	}
	if (FUNC31(kid) != SHA256_MAC_LEN) {
		FUNC29(MSG_DEBUG,
			   "DPP: Unexpected signedConnector JWS Protected Header kid length: %u (expected %u)",
			   (unsigned int) FUNC31(kid), SHA256_MAC_LEN);
		ret = DPP_STATUS_INVALID_CONNECTOR;
		goto fail;
	}

	pos = end + 1;
	end = FUNC25(pos, '.');
	if (!end) {
		FUNC29(MSG_DEBUG,
			   "DPP: Missing dot(2) in signedConnector");
		ret = DPP_STATUS_INVALID_CONNECTOR;
		goto fail;
	}
	signed_end = end - 1;
	info->payload = FUNC18((const unsigned char *) pos,
					  end - pos, &info->payload_len);
	if (!info->payload) {
		FUNC29(MSG_DEBUG,
			   "DPP: Failed to base64url decode signedConnector JWS Payload");
		ret = DPP_STATUS_INVALID_CONNECTOR;
		goto fail;
	}
	FUNC28(MSG_DEBUG,
			  "DPP: signedConnector - JWS Payload",
			  info->payload, info->payload_len);
	pos = end + 1;
	signature = FUNC18((const unsigned char *) pos,
				      FUNC26(pos), &signature_len);
	if (!signature) {
		FUNC29(MSG_DEBUG,
			   "DPP: Failed to base64url decode signedConnector signature");
		ret = DPP_STATUS_INVALID_CONNECTOR;
		goto fail;
		}
	FUNC27(MSG_DEBUG, "DPP: signedConnector - signature",
		    signature, signature_len);

	if (FUNC19(csign_pub, kid) < 0) {
		ret = DPP_STATUS_NO_MATCH;
		goto fail;
	}

	if (signature_len & 0x01) {
		FUNC29(MSG_DEBUG,
			   "DPP: Unexpected signedConnector signature length (%d)",
			   (int) signature_len);
		ret = DPP_STATUS_INVALID_CONNECTOR;
		goto fail;
	}

	/* JWS Signature encodes the signature (r,s) as two octet strings. Need
	 * to convert that to DER encoded ECDSA_SIG for OpenSSL EVP routines. */
	r = FUNC0(signature, signature_len / 2, NULL);
	s = FUNC0(signature + signature_len / 2, signature_len / 2, NULL);
	sig = FUNC3();
	if (!r || !s || !sig || FUNC4(sig, r, s) != 1)
		goto fail;
	r = NULL;
	s = NULL;

	der_len = FUNC22(sig, &der);
	if (der_len <= 0) {
		FUNC29(MSG_DEBUG, "DPP: Could not DER encode signature");
		goto fail;
	}
	FUNC27(MSG_DEBUG, "DPP: DER encoded signature", der, der_len);
	md_ctx = FUNC14();
	if (!md_ctx)
		goto fail;

	FUNC8();
	if (FUNC12(md_ctx, NULL, sign_md, NULL, csign_pub) != 1) {
		FUNC29(MSG_DEBUG, "DPP: EVP_DigestVerifyInit failed: %s",
			   FUNC9(FUNC10(), NULL));
		goto fail;
	}
	if (FUNC13(md_ctx, signed_start,
				   signed_end - signed_start + 1) != 1) {
		FUNC29(MSG_DEBUG, "DPP: EVP_DigestVerifyUpdate failed: %s",
			   FUNC9(FUNC10(), NULL));
		goto fail;
	}
	res = FUNC11(md_ctx, der, der_len);
	if (res != 1) {
		FUNC29(MSG_DEBUG,
			   "DPP: EVP_DigestVerifyFinal failed (res=%d): %s",
			   res, FUNC9(FUNC10(), NULL));
		ret = DPP_STATUS_INVALID_CONNECTOR;
		goto fail;
	}

	ret = DPP_STATUS_OK;
fail:
	FUNC6(eckey);
	FUNC15(md_ctx);
	FUNC23(prot_hdr);
	FUNC30(kid);
	FUNC23(signature);
	FUNC2(sig);
	FUNC1(r);
	FUNC1(s);
	FUNC17(der);
	return ret;
}