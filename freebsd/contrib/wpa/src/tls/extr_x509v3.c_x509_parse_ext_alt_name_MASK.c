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
struct x509_name {int dummy; } ;
struct asn1_hdr {int length; scalar_t__ class; int tag; int /*<<< orphan*/ * payload; } ;

/* Variables and functions */
 scalar_t__ ASN1_CLASS_CONTEXT_SPECIFIC ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int,struct asn1_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct x509_name*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct x509_name*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct x509_name*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct x509_name*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct x509_name*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct x509_name *name,
				   const u8 *pos, size_t len)
{
	struct asn1_hdr hdr;
	const u8 *p, *end;

	/*
	 * GeneralNames ::= SEQUENCE SIZE (1..MAX) OF GeneralName
	 *
	 * GeneralName ::= CHOICE {
	 *     otherName                       [0]     OtherName,
	 *     rfc822Name                      [1]     IA5String,
	 *     dNSName                         [2]     IA5String,
	 *     x400Address                     [3]     ORAddress,
	 *     directoryName                   [4]     Name,
	 *     ediPartyName                    [5]     EDIPartyName,
	 *     uniformResourceIdentifier       [6]     IA5String,
	 *     iPAddress                       [7]     OCTET STRING,
	 *     registeredID                    [8]     OBJECT IDENTIFIER }
	 *
	 * OtherName ::= SEQUENCE {
	 *     type-id    OBJECT IDENTIFIER,
	 *     value      [0] EXPLICIT ANY DEFINED BY type-id }
	 *
	 * EDIPartyName ::= SEQUENCE {
	 *     nameAssigner            [0]     DirectoryString OPTIONAL,
	 *     partyName               [1]     DirectoryString }
	 */

	for (p = pos, end = pos + len; p < end; p = hdr.payload + hdr.length) {
		int res;

		if (FUNC0(p, end - p, &hdr) < 0) {
			FUNC1(MSG_DEBUG, "X509: Failed to parse "
				   "SubjectAltName item");
			return -1;
		}

		if (hdr.class != ASN1_CLASS_CONTEXT_SPECIFIC)
			continue;

		switch (hdr.tag) {
		case 1:
			res = FUNC4(name, hdr.payload,
							  hdr.length);
			break;
		case 2:
			res = FUNC2(name, hdr.payload,
						      hdr.length);
			break;
		case 6:
			res = FUNC6(name, hdr.payload,
						      hdr.length);
			break;
		case 7:
			res = FUNC3(name, hdr.payload,
						     hdr.length);
			break;
		case 8:
			res = FUNC5(name, hdr.payload,
						      hdr.length);
			break;
		case 0: /* TODO: otherName */
		case 3: /* TODO: x500Address */
		case 4: /* TODO: directoryName */
		case 5: /* TODO: ediPartyName */
		default:
			res = 0;
			break;
		}
		if (res < 0)
			return res;
	}

	return 0;
}