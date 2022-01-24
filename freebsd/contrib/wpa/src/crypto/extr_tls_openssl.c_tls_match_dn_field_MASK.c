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
typedef  int /*<<< orphan*/  field ;
typedef  int /*<<< orphan*/  dn_cnt ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 char* FUNC0 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct tls_dn_field_order_cnt*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tls_dn_field_order_cnt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int FUNC5(X509 *cert, const char *match)
{
	const char *token, *last = NULL;
	char field[256];
	struct tls_dn_field_order_cnt dn_cnt;

	FUNC3(&dn_cnt, 0, sizeof(dn_cnt));

	/* Maximum length of each DN field is 255 characters */

	/* Process each '/' delimited field */
	while ((token = FUNC0(match, "/", &last))) {
		if (last - token >= (int) sizeof(field)) {
			FUNC4(MSG_ERROR,
				   "OpenSSL: Too long DN matching field value in '%s'",
				   match);
			return 0;
		}
		FUNC2(field, token, last - token);
		field[last - token] = '\0';

		if (!FUNC1(cert, field, &dn_cnt)) {
			FUNC4(MSG_DEBUG, "OpenSSL: No match for DN '%s'",
				   field);
			return 0;
		}
	}

	return 1;
}