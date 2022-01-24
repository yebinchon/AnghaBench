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
typedef  scalar_t__ u8 ;
struct x509_certificate {size_t cert_len; int tbs_cert_len; int sign_value_len; scalar_t__ const* sign_value; int /*<<< orphan*/  signature_alg; scalar_t__* cert_start; scalar_t__* tbs_cert_start; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; int length; scalar_t__* payload; } ;

/* Variables and functions */
 scalar_t__ ASN1_CLASS_UNIVERSAL ; 
 scalar_t__ ASN1_TAG_BITSTRING ; 
 scalar_t__ ASN1_TAG_SEQUENCE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ FUNC0 (scalar_t__ const*,int,struct asn1_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC2 (struct x509_certificate*,scalar_t__ const*,size_t) ; 
 scalar_t__ const* FUNC3 (scalar_t__ const*,int) ; 
 struct x509_certificate* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct x509_certificate*) ; 
 scalar_t__ FUNC8 (scalar_t__ const*,int,int /*<<< orphan*/ *,scalar_t__ const**) ; 
 scalar_t__ FUNC9 (scalar_t__ const*,int,struct x509_certificate*,scalar_t__ const**) ; 

struct x509_certificate * FUNC10(const u8 *buf, size_t len)
{
	struct asn1_hdr hdr;
	const u8 *pos, *end, *hash_start;
	struct x509_certificate *cert;

	cert = FUNC4(sizeof(*cert) + len);
	if (cert == NULL)
		return NULL;
	FUNC2(cert + 1, buf, len);
	cert->cert_start = (u8 *) (cert + 1);
	cert->cert_len = len;

	pos = buf;
	end = buf + len;

	/* RFC 3280 - X.509 v3 certificate / ASN.1 DER */

	/* Certificate ::= SEQUENCE */
	if (FUNC0(pos, len, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_SEQUENCE) {
		FUNC6(MSG_DEBUG, "X509: Certificate did not start with "
			   "a valid SEQUENCE - found class %d tag 0x%x",
			   hdr.class, hdr.tag);
		FUNC7(cert);
		return NULL;
	}
	pos = hdr.payload;

	if (hdr.length > end - pos) {
		FUNC7(cert);
		return NULL;
	}

	if (hdr.length < end - pos) {
		FUNC5(MSG_MSGDUMP, "X509: Ignoring extra data after DER "
			    "encoded certificate",
			    pos + hdr.length, end - (pos + hdr.length));
		end = pos + hdr.length;
	}

	hash_start = pos;
	cert->tbs_cert_start = cert->cert_start + (hash_start - buf);
	if (FUNC9(pos, end - pos, cert, &pos)) {
		FUNC7(cert);
		return NULL;
	}
	cert->tbs_cert_len = pos - hash_start;

	/* signatureAlgorithm AlgorithmIdentifier */
	if (FUNC8(pos, end - pos,
					    &cert->signature_alg, &pos)) {
		FUNC7(cert);
		return NULL;
	}

	/* signatureValue BIT STRING */
	if (FUNC0(pos, end - pos, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_BITSTRING) {
		FUNC6(MSG_DEBUG, "X509: Expected BITSTRING "
			   "(signatureValue) - found class %d tag 0x%x",
			   hdr.class, hdr.tag);
		FUNC7(cert);
		return NULL;
	}
	if (hdr.length < 1) {
		FUNC7(cert);
		return NULL;
	}
	pos = hdr.payload;
	if (*pos) {
		FUNC6(MSG_DEBUG, "X509: BITSTRING - %d unused bits",
			   *pos);
		/* PKCS #1 v1.5 10.2.1:
		 * It is an error if the length in bits of the signature S is
		 * not a multiple of eight.
		 */
		FUNC7(cert);
		return NULL;
	}
	FUNC1(cert->sign_value);
	cert->sign_value = FUNC3(pos + 1, hdr.length - 1);
	if (cert->sign_value == NULL) {
		FUNC6(MSG_DEBUG, "X509: Failed to allocate memory for "
			   "signatureValue");
		FUNC7(cert);
		return NULL;
	}
	cert->sign_value_len = hdr.length - 1;
	FUNC5(MSG_MSGDUMP, "X509: signature",
		    cert->sign_value, cert->sign_value_len);

	return cert;
}