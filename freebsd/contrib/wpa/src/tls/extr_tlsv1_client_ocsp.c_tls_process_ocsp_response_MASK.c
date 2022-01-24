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
struct x509_certificate {struct x509_certificate* next; scalar_t__ issuer_trusted; int /*<<< orphan*/  subject; int /*<<< orphan*/  ocsp_revoked; int /*<<< orphan*/  ocsp_good; } ;
struct tlsv1_client {struct x509_certificate* server_cert; } ;
struct asn1_oid {int dummy; } ;
struct asn1_hdr {scalar_t__ tag; scalar_t__* payload; int length; int /*<<< orphan*/  class; } ;
typedef  int /*<<< orphan*/  sbuf ;
typedef  int /*<<< orphan*/  obuf ;
typedef  enum tls_ocsp_result { ____Placeholder_tls_ocsp_result } tls_ocsp_result ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_CLASS_CONTEXT_SPECIFIC ; 
 int /*<<< orphan*/  ASN1_CLASS_UNIVERSAL ; 
 scalar_t__ ASN1_TAG_ENUMERATED ; 
 scalar_t__ ASN1_TAG_OCTETSTRING ; 
 scalar_t__ ASN1_TAG_SEQUENCE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ OCSP_RESP_STATUS_SUCCESSFUL ; 
 int TLS_OCSP_INVALID ; 
 int TLS_OCSP_NO_RESPONSE ; 
 int TLS_OCSP_REVOKED ; 
 scalar_t__ FUNC0 (scalar_t__ const*,int,struct asn1_hdr*) ; 
 scalar_t__ FUNC1 (scalar_t__ const*,int,struct asn1_oid*,scalar_t__ const**) ; 
 int /*<<< orphan*/  FUNC2 (struct asn1_oid*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct asn1_oid*) ; 
 int FUNC4 (struct tlsv1_client*,struct x509_certificate*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 

enum tls_ocsp_result FUNC8(struct tlsv1_client *conn,
					       const u8 *resp, size_t len)
{
	struct asn1_hdr hdr;
	const u8 *pos, *end;
	u8 resp_status;
	struct asn1_oid oid;
	char obuf[80];
	struct x509_certificate *cert;
	enum tls_ocsp_result res = TLS_OCSP_NO_RESPONSE;
	enum tls_ocsp_result res_first = res;

	FUNC5(MSG_MSGDUMP, "TLSv1: OCSPResponse", resp, len);

	/*
	 * RFC 6960, 4.2.1:
	 * OCSPResponse ::= SEQUENCE {
	 *    responseStatus  OCSPResponseStatus,
	 *    responseBytes   [0] EXPLICIT ResponseBytes OPTIONAL }
	 */

	if (FUNC0(resp, len, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_SEQUENCE) {
		FUNC6(MSG_DEBUG,
			   "OCSP: Expected SEQUENCE (OCSPResponse) - found class %d tag 0x%x",
			   hdr.class, hdr.tag);
		return TLS_OCSP_INVALID;
	}
	pos = hdr.payload;
	end = hdr.payload + hdr.length;

	/* OCSPResponseStatus ::= ENUMERATED */
	if (FUNC0(pos, end - pos, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_ENUMERATED ||
	    hdr.length != 1) {
		FUNC6(MSG_DEBUG,
			   "OCSP: Expected ENUMERATED (responseStatus) - found class %d tag 0x%x length %u",
			   hdr.class, hdr.tag, hdr.length);
		return TLS_OCSP_INVALID;
	}
	resp_status = hdr.payload[0];
	FUNC6(MSG_DEBUG, "OCSP: responseStatus %u", resp_status);
	pos = hdr.payload + hdr.length;
	if (resp_status != OCSP_RESP_STATUS_SUCCESSFUL) {
		FUNC6(MSG_DEBUG, "OCSP: No stapling result");
		return TLS_OCSP_NO_RESPONSE;
	}

	/* responseBytes   [0] EXPLICIT ResponseBytes OPTIONAL */
	if (pos == end)
		return TLS_OCSP_NO_RESPONSE;

	if (FUNC0(pos, end - pos, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_CONTEXT_SPECIFIC ||
	    hdr.tag != 0) {
		FUNC6(MSG_DEBUG,
			   "OCSP: Expected [0] EXPLICIT (responseBytes) - found class %d tag 0x%x",
			   hdr.class, hdr.tag);
		return TLS_OCSP_INVALID;
	}

	/*
	 * ResponseBytes ::= SEQUENCE {
	 *     responseType   OBJECT IDENTIFIER,
	 *     response       OCTET STRING }
	 */

	if (FUNC0(hdr.payload, hdr.length, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_SEQUENCE) {
		FUNC6(MSG_DEBUG,
			   "OCSP: Expected SEQUENCE (ResponseBytes) - found class %d tag 0x%x",
			   hdr.class, hdr.tag);
		return TLS_OCSP_INVALID;
	}
	pos = hdr.payload;
	end = hdr.payload + hdr.length;

	/* responseType   OBJECT IDENTIFIER */
	if (FUNC1(pos, end - pos, &oid, &pos)) {
		FUNC6(MSG_DEBUG,
			   "OCSP: Failed to parse OID (responseType)");
		return TLS_OCSP_INVALID;
	}
	FUNC2(&oid, obuf, sizeof(obuf));
	FUNC6(MSG_DEBUG, "OCSP: responseType %s", obuf);
	if (!FUNC3(&oid)) {
		FUNC6(MSG_DEBUG, "OCSP: Ignore unsupported response type");
		return TLS_OCSP_NO_RESPONSE;
	}

	/* response       OCTET STRING */
	if (FUNC0(pos, end - pos, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_OCTETSTRING) {
		FUNC6(MSG_DEBUG,
			   "OCSP: Expected OCTET STRING (response) - found class %d tag 0x%x",
			   hdr.class, hdr.tag);
		return TLS_OCSP_INVALID;
	}

	cert = conn->server_cert;
	while (cert) {
		if (!cert->ocsp_good && !cert->ocsp_revoked) {
			char sbuf[128];

			FUNC7(&cert->subject, sbuf, sizeof(sbuf));
			FUNC6(MSG_DEBUG,
				   "OCSP: Trying to find certificate status for %s",
				   sbuf);

			res = FUNC4(conn, cert,
							      hdr.payload,
							      hdr.length);
			if (cert == conn->server_cert)
				res_first = res;
		}
		if (res == TLS_OCSP_REVOKED || cert->issuer_trusted)
			break;
		cert = cert->next;
	}
	return res == TLS_OCSP_REVOKED ? res : res_first;
}