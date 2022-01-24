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
struct x509_certificate {int /*<<< orphan*/  issuer; int /*<<< orphan*/  extensions_present; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; scalar_t__ length; int /*<<< orphan*/  payload; } ;

/* Variables and functions */
 scalar_t__ ASN1_CLASS_UNIVERSAL ; 
 scalar_t__ ASN1_TAG_SEQUENCE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  X509_EXT_ISSUER_ALT_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,size_t,struct asn1_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct x509_certificate *cert,
					  const u8 *pos, size_t len)
{
	struct asn1_hdr hdr;

	/* IssuerAltName ::= GeneralNames */

	if (FUNC0(pos, len, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_SEQUENCE) {
		FUNC1(MSG_DEBUG, "X509: Expected SEQUENCE in "
			   "IssuerAltName; found %d tag 0x%x",
			   hdr.class, hdr.tag);
		return -1;
	}

	FUNC1(MSG_DEBUG, "X509: IssuerAltName");
	cert->extensions_present |= X509_EXT_ISSUER_ALT_NAME;

	if (hdr.length == 0)
		return 0;

	return FUNC2(&cert->issuer, hdr.payload,
				       hdr.length);
}