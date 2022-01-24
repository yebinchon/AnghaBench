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
typedef  int /*<<< orphan*/  OpenPGP_key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*) ; 
 size_t FUNC4 (char*) ; 
 char** ta_ASC ; 

int
FUNC5(void)
{
	static int once = -1;
#ifdef HAVE_TA_ASC
	OpenPGP_key *key;
	const char **tp;
	char *cp;
	size_t n;
#endif

	if (once < 0) {
		once = 0;
#ifdef HAVE_TA_ASC
		for (tp = ta_ASC; *tp; tp++) {
			if ((cp = strdup(*tp))) {
				n = strlen(cp);
				key = load_key_buf((unsigned char *)cp, n);
				free(cp);
				if (key) {
					openpgp_trust_add(key);
					once++;
				}
			}
		}
#endif
	}
	return (once);
}