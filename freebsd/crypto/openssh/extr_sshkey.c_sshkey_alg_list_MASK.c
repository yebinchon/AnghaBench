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
struct keytype {int type; int /*<<< orphan*/ * name; scalar_t__ cert; scalar_t__ sigonly; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct keytype* keytypes ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,size_t) ; 
 char* FUNC2 (char*,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 

char *
FUNC4(int certs_only, int plain_only, int include_sigonly, char sep)
{
	char *tmp, *ret = NULL;
	size_t nlen, rlen = 0;
	const struct keytype *kt;

	for (kt = keytypes; kt->type != -1; kt++) {
		if (kt->name == NULL)
			continue;
		if (!include_sigonly && kt->sigonly)
			continue;
		if ((certs_only && !kt->cert) || (plain_only && kt->cert))
			continue;
		if (ret != NULL)
			ret[rlen++] = sep;
		nlen = FUNC3(kt->name);
		if ((tmp = FUNC2(ret, rlen + nlen + 2)) == NULL) {
			FUNC0(ret);
			return NULL;
		}
		ret = tmp;
		FUNC1(ret + rlen, kt->name, nlen + 1);
		rlen += nlen;
	}
	return ret;
}