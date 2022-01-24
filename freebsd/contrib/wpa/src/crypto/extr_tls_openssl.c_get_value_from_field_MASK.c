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
struct tls_dn_field_order_cnt {int /*<<< orphan*/  email; int /*<<< orphan*/  ou; int /*<<< orphan*/  o; int /*<<< orphan*/  st; int /*<<< orphan*/  l; int /*<<< orphan*/  c; int /*<<< orphan*/  cn; } ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int NID_commonName ; 
 int NID_countryName ; 
 int NID_localityName ; 
 int NID_organizationName ; 
 int NID_organizationalUnitName ; 
 int NID_pkcs9_emailAddress ; 
 int NID_stateOrProvinceName ; 
 int FUNC0 (int /*<<< orphan*/  const*,int,char*,char*,struct tls_dn_field_order_cnt*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 char* FUNC2 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC4(const X509 *cert, char *field_str,
				struct tls_dn_field_order_cnt *dn_cnt)
{
	int nid;
	char *context = NULL, *name, *value;

	if (FUNC1(field_str, "*") == 0)
		return 1; /* wildcard matches everything */

	name = FUNC2(field_str, "=", &context);
	if (!name)
		return 0;

	/* Compare all configured DN fields and assign nid based on that to
	 * fetch correct value from certificate subject */
	if (FUNC1(name, "CN") == 0) {
		nid = NID_commonName;
		dn_cnt->cn++;
	} else if(FUNC1(name, "C") == 0) {
		nid = NID_countryName;
		dn_cnt->c++;
	} else if (FUNC1(name, "L") == 0) {
		nid = NID_localityName;
		dn_cnt->l++;
	} else if (FUNC1(name, "ST") == 0) {
		nid = NID_stateOrProvinceName;
		dn_cnt->st++;
	} else if (FUNC1(name, "O") == 0) {
		nid = NID_organizationName;
		dn_cnt->o++;
	} else if (FUNC1(name, "OU") == 0) {
		nid = NID_organizationalUnitName;
		dn_cnt->ou++;
	} else if (FUNC1(name, "emailAddress") == 0) {
		nid = NID_pkcs9_emailAddress;
		dn_cnt->email++;
	} else {
		FUNC3(MSG_ERROR,
			"TLS: Unknown field '%s' in check_cert_subject", name);
		return 0;
	}

	value = FUNC2(field_str, "=", &context);
	if (!value) {
		FUNC3(MSG_ERROR,
			   "TLS: Distinguished Name field '%s' value is not defined in check_cert_subject",
			   name);
		return 0;
	}

	return FUNC0(cert, nid, name, value, dn_cnt);
}