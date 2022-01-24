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
typedef  int /*<<< orphan*/  const u8 ;
struct x509_certificate {int /*<<< orphan*/  extensions_present; int /*<<< orphan*/  ext_key_usage; } ;
struct asn1_oid {int dummy; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; int length; int /*<<< orphan*/  const* payload; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ ASN1_CLASS_UNIVERSAL ; 
 scalar_t__ ASN1_TAG_SEQUENCE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  X509_EXT_EXT_KEY_USAGE ; 
 int /*<<< orphan*/  X509_EXT_KEY_USAGE_ANY ; 
 int /*<<< orphan*/  X509_EXT_KEY_USAGE_CLIENT_AUTH ; 
 int /*<<< orphan*/  X509_EXT_KEY_USAGE_OCSP ; 
 int /*<<< orphan*/  X509_EXT_KEY_USAGE_SERVER_AUTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,size_t,struct asn1_hdr*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int,struct asn1_oid*,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC2 (struct asn1_oid*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 scalar_t__ FUNC6 (struct asn1_oid*) ; 
 scalar_t__ FUNC7 (struct asn1_oid*) ; 
 scalar_t__ FUNC8 (struct asn1_oid*) ; 
 scalar_t__ FUNC9 (struct asn1_oid*) ; 

__attribute__((used)) static int FUNC10(struct x509_certificate *cert,
					const u8 *pos, size_t len)
{
	struct asn1_hdr hdr;
	const u8 *end;
	struct asn1_oid oid;

	/*
	 * ExtKeyUsageSyntax ::= SEQUENCE SIZE (1..MAX) OF KeyPurposeId
	 *
	 * KeyPurposeId ::= OBJECT IDENTIFIER
	 */

	if (FUNC0(pos, len, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_SEQUENCE) {
		FUNC5(MSG_DEBUG, "X509: Expected SEQUENCE "
			   "(ExtKeyUsageSyntax) - found class %d tag 0x%x",
			   hdr.class, hdr.tag);
		return -1;
	}
	if (hdr.length > pos + len - hdr.payload)
		return -1;
	pos = hdr.payload;
	end = pos + hdr.length;

	FUNC4(MSG_MSGDUMP, "X509: ExtKeyUsageSyntax", pos, end - pos);

	while (pos < end) {
		char buf[80];

		if (FUNC1(pos, end - pos, &oid, &pos))
			return -1;
		if (FUNC6(&oid)) {
			FUNC3(buf, "anyExtendedKeyUsage", sizeof(buf));
			cert->ext_key_usage |= X509_EXT_KEY_USAGE_ANY;
		} else if (FUNC9(&oid)) {
			FUNC3(buf, "id-kp-serverAuth", sizeof(buf));
			cert->ext_key_usage |= X509_EXT_KEY_USAGE_SERVER_AUTH;
		} else if (FUNC7(&oid)) {
			FUNC3(buf, "id-kp-clientAuth", sizeof(buf));
			cert->ext_key_usage |= X509_EXT_KEY_USAGE_CLIENT_AUTH;
		} else if (FUNC8(&oid)) {
			FUNC3(buf, "id-kp-OCSPSigning", sizeof(buf));
			cert->ext_key_usage |= X509_EXT_KEY_USAGE_OCSP;
		} else {
			FUNC2(&oid, buf, sizeof(buf));
		}
		FUNC5(MSG_DEBUG, "ExtKeyUsage KeyPurposeId: %s", buf);
	}

	cert->extensions_present |= X509_EXT_EXT_KEY_USAGE;

	return 0;
}