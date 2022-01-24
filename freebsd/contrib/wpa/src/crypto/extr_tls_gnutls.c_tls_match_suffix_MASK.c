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
typedef  int /*<<< orphan*/  gnutls_x509_crt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char*,char*,char**) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC5(gnutls_x509_crt_t cert, const char *match,
			    int full)
{
	char *values, *token, *context = NULL;
	int ret = 0;

	if (!FUNC1(match, ';'))
		return FUNC4(cert, match, full);

	values = FUNC2(match);
	if (!values)
		return 0;

	/* Process each match alternative separately until a match is found */
	while ((token = FUNC3(values, ";", &context))) {
		if (FUNC4(cert, token, full)) {
			ret = 1;
			break;
		}
	}

	FUNC0(values);
	return ret;
}