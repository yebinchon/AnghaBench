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
typedef  int u8 ;
struct x509_certificate {int dummy; } ;
struct asn1_oid {int dummy; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; int* payload; int length; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ ASN1_CLASS_PRIVATE ; 
 scalar_t__ ASN1_CLASS_UNIVERSAL ; 
 scalar_t__ ASN1_TAG_BOOLEAN ; 
 scalar_t__ ASN1_TAG_OCTETSTRING ; 
 scalar_t__ ASN1_TAG_SEQUENCE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ FUNC0 (int const*,int,struct asn1_hdr*) ; 
 scalar_t__ FUNC1 (int const*,int,struct asn1_oid*,int const**) ; 
 int /*<<< orphan*/  FUNC2 (struct asn1_oid*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (struct x509_certificate*,struct asn1_oid*,int*,int) ; 

__attribute__((used)) static int FUNC6(struct x509_certificate *cert,
				const u8 *pos, size_t len, const u8 **next)
{
	const u8 *end;
	struct asn1_hdr hdr;
	struct asn1_oid oid;
	int critical_ext = 0, res;
	char buf[80];

	/*
	 * Extension  ::=  SEQUENCE  {
	 *     extnID      OBJECT IDENTIFIER,
	 *     critical    BOOLEAN DEFAULT FALSE,
	 *     extnValue   OCTET STRING
	 * }
	 */

	if (FUNC0(pos, len, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_SEQUENCE) {
		FUNC4(MSG_DEBUG, "X509: Unexpected ASN.1 header in "
			   "Extensions: class %d tag 0x%x; expected SEQUENCE",
			   hdr.class, hdr.tag);
		return -1;
	}
	pos = hdr.payload;
	*next = end = pos + hdr.length;

	if (FUNC1(pos, end - pos, &oid, &pos) < 0) {
		FUNC4(MSG_DEBUG, "X509: Unexpected ASN.1 data for "
			   "Extension (expected OID)");
		return -1;
	}

	if (FUNC0(pos, end - pos, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    (hdr.tag != ASN1_TAG_BOOLEAN &&
	     hdr.tag != ASN1_TAG_OCTETSTRING)) {
		FUNC4(MSG_DEBUG, "X509: Unexpected ASN.1 header in "
			   "Extensions: class %d tag 0x%x; expected BOOLEAN "
			   "or OCTET STRING", hdr.class, hdr.tag);
		return -1;
	}

	if (hdr.tag == ASN1_TAG_BOOLEAN) {
		critical_ext = hdr.payload[0];
		pos = hdr.payload;
		if (FUNC0(pos, end - pos, &hdr) < 0 ||
		    (hdr.class != ASN1_CLASS_UNIVERSAL &&
		     hdr.class != ASN1_CLASS_PRIVATE) ||
		    hdr.tag != ASN1_TAG_OCTETSTRING) {
			FUNC4(MSG_DEBUG, "X509: Unexpected ASN.1 header "
				   "in Extensions: class %d tag 0x%x; "
				   "expected OCTET STRING",
				   hdr.class, hdr.tag);
			return -1;
		}
	}

	FUNC2(&oid, buf, sizeof(buf));
	FUNC4(MSG_DEBUG, "X509: Extension: extnID=%s critical=%d",
		   buf, critical_ext);
	FUNC3(MSG_MSGDUMP, "X509: extnValue", hdr.payload, hdr.length);

	res = FUNC5(cert, &oid, hdr.payload, hdr.length);
	if (res < 0)
		return res;
	if (res == 1 && critical_ext) {
		FUNC4(MSG_INFO, "X509: Unknown critical extension %s",
			   buf);
		return -1;
	}

	return 0;
}