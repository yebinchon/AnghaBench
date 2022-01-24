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
typedef  int /*<<< orphan*/  login_cap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

const char *
FUNC4(login_cap_t *lc, const char *def, const char *error) {
	const char *cipher;

	cipher = FUNC3(lc, "passwd_format", def, NULL);
	if (FUNC2("CRYPT_DEBUG") != NULL)
		FUNC1(stderr, "login_setcryptfmt: "
		    "passwd_format = %s\n", cipher);
	if (cipher == NULL)
		return (error);
	if (!FUNC0(cipher))
		return (error);
	return (cipher);
}