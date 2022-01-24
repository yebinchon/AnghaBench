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
struct tls_dn_field_order_cnt {int dummy; } ;
typedef  int /*<<< orphan*/  X509_NAME_ENTRY ;
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct tls_dn_field_order_cnt const*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(const X509 *cert, int nid, const char *field,
			  const char *value,
			  const struct tls_dn_field_order_cnt *dn_cnt)
{
	int i, ret = 0, len, config_dn_field_index, match_index = 0;
	X509_NAME *name;

	len = FUNC8(value);
	name = FUNC5((X509 *) cert);

	/* Assign incremented cnt for every field of DN to check DN field in
	 * right order */
	config_dn_field_index = FUNC6(dn_cnt, nid);
	if (config_dn_field_index < 0)
		return 0;

	/* Fetch value based on NID */
	for (i = -1; (i = FUNC4(name, nid, i)) > -1;) {
		X509_NAME_ENTRY *e;
		ASN1_STRING *cn;

		e = FUNC3(name, i);
		if (!e)
			continue;

		cn = FUNC2(e);
		if (!cn)
			continue;

		match_index++;

		/* check for more than one DN field with same name */
		if (match_index != config_dn_field_index)
			continue;

		/* Check wildcard at the right end side */
		/* E.g., if OU=develop* mentioned in configuration, allow 'OU'
		 * of the subject in the client certificate to start with
		 * 'develop' */
		if (len > 0 && value[len - 1] == '*') {
			/* Compare actual certificate DN field value with
			 * configuration DN field value up to the specified
			 * length. */
			ret = FUNC1(cn) >= len - 1 &&
				FUNC7(FUNC0(cn), value,
					  len - 1) == 0;
		} else {
			/* Compare actual certificate DN field value with
			 * configuration DN field value */
			ret = FUNC1(cn) == len &&
				FUNC7(FUNC0(cn), value,
					  len) == 0;
		}
		if (!ret) {
			FUNC9(MSG_ERROR,
				   "OpenSSL: Failed to match %s '%s' with certificate DN field value '%s'",
				   field, value, FUNC0(cn));
		}
		break;
	}

	return ret;
}