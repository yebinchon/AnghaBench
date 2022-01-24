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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct crypto_public_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  TLS_ALERT_DECODE_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_DECRYPT_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int TLS_VERSION_1_2 ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (struct crypto_public_key*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

int FUNC9(u16 tls_version, struct crypto_public_key *pk,
			 const u8 *data, size_t data_len,
			 const u8 *pos, size_t len, u8 *alert)
{
	u8 *buf;
	const u8 *end = pos + len;
	const u8 *decrypted;
	u16 slen;
	size_t buflen;

	if (end - pos < 2) {
		*alert = TLS_ALERT_DECODE_ERROR;
		return -1;
	}
	slen = FUNC0(pos);
	pos += 2;
	if (end - pos < slen) {
		*alert = TLS_ALERT_DECODE_ERROR;
		return -1;
	}
	if (end - pos > slen) {
		FUNC6(MSG_MSGDUMP, "Additional data after Signature",
			    pos + slen, end - pos - slen);
		end = pos + slen;
	}

	FUNC6(MSG_MSGDUMP, "TLSv1: Signature", pos, end - pos);
	if (pk == NULL) {
		FUNC8(MSG_DEBUG, "TLSv1: No public key to verify signature");
		*alert = TLS_ALERT_INTERNAL_ERROR;
		return -1;
	}

	buflen = end - pos;
	buf = FUNC3(end - pos);
	if (buf == NULL) {
		*alert = TLS_ALERT_INTERNAL_ERROR;
		return -1;
	}
	if (FUNC1(pk, pos, end - pos, buf, &buflen) <
	    0) {
		FUNC8(MSG_DEBUG, "TLSv1: Failed to decrypt signature");
		FUNC2(buf);
		*alert = TLS_ALERT_DECRYPT_ERROR;
		return -1;
	}
	decrypted = buf;

	FUNC7(MSG_MSGDUMP, "TLSv1: Decrypted Signature",
			decrypted, buflen);

#ifdef CONFIG_TLSV12
	if (tls_version >= TLS_VERSION_1_2) {
		/*
		 * RFC 3447, A.2.4 RSASSA-PKCS1-v1_5
		 *
		 * DigestInfo ::= SEQUENCE {
		 *   digestAlgorithm DigestAlgorithm,
		 *   digest OCTET STRING
		 * }
		 *
		 * SHA-256 OID: sha256WithRSAEncryption ::= {pkcs-1 11}
		 *
		 * DER encoded DigestInfo for SHA256 per RFC 3447:
		 * 30 31 30 0d 06 09 60 86 48 01 65 03 04 02 01 05 00 04 20 ||
		 * H
		 */
		if (buflen >= 19 + 32 &&
		    os_memcmp(buf, "\x30\x31\x30\x0d\x06\x09\x60\x86\x48\x01"
			      "\x65\x03\x04\x02\x01\x05\x00\x04\x20", 19) == 0)
		{
			wpa_printf(MSG_DEBUG, "TLSv1.2: DigestAlgorithm = SHA-256");
			decrypted = buf + 19;
			buflen -= 19;
		} else if (buflen >= 19 + 48 &&
		    os_memcmp(buf, "\x30\x41\x30\x0d\x06\x09\x60\x86\x48\x01"
			      "\x65\x03\x04\x02\x02\x05\x00\x04\x30", 19) == 0)
		{
			wpa_printf(MSG_DEBUG, "TLSv1.2: DigestAlgorithm = SHA-384");
			decrypted = buf + 19;
			buflen -= 19;
		} else if (buflen >= 19 + 64 &&
		    os_memcmp(buf, "\x30\x51\x30\x0d\x06\x09\x60\x86\x48\x01"
			      "\x65\x03\x04\x02\x03\x05\x00\x04\x40", 19) == 0)
		{
			wpa_printf(MSG_DEBUG, "TLSv1.2: DigestAlgorithm = SHA-512");
			decrypted = buf + 19;
			buflen -= 19;

		} else {
			wpa_printf(MSG_DEBUG, "TLSv1.2: Unrecognized DigestInfo");
			os_free(buf);
			*alert = TLS_ALERT_DECRYPT_ERROR;
			return -1;
		}
	}
#endif /* CONFIG_TLSV12 */

	if (buflen != data_len ||
	    FUNC5(decrypted, data, data_len) != 0) {
		FUNC8(MSG_DEBUG, "TLSv1: Invalid Signature in CertificateVerify - did not match calculated hash");
		FUNC2(buf);
		*alert = TLS_ALERT_DECRYPT_ERROR;
		return -1;
	}

	FUNC2(buf);

	return 0;
}