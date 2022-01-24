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
struct x509_certificate {int dummy; } ;
struct asn1_oid {int* oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct asn1_oid*) ; 
 int FUNC1 (struct x509_certificate*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC2 (struct x509_certificate*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC3 (struct x509_certificate*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC4 (struct x509_certificate*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC5 (struct x509_certificate*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC6(struct x509_certificate *cert,
				     struct asn1_oid *oid,
				     const u8 *pos, size_t len)
{
	if (!FUNC0(oid))
		return 1;

	/* TODO: add other extensions required by RFC 3280, Ch 4.2:
	 * certificate policies (section 4.2.1.5)
	 * name constraints (section 4.2.1.11)
	 * policy constraints (section 4.2.1.12)
	 * inhibit any-policy (section 4.2.1.15)
	 */
	switch (oid->oid[3]) {
	case 15: /* id-ce-keyUsage */
		return FUNC4(cert, pos, len);
	case 17: /* id-ce-subjectAltName */
		return FUNC5(cert, pos, len);
	case 18: /* id-ce-issuerAltName */
		return FUNC3(cert, pos, len);
	case 19: /* id-ce-basicConstraints */
		return FUNC1(cert, pos, len);
	case 37: /* id-ce-extKeyUsage */
		return FUNC2(cert, pos, len);
	default:
		return 1;
	}
}