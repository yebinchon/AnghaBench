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
struct kexalg {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct kexalg* kexalgs ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,size_t) ; 
 char* FUNC2 (char*,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 

char *
FUNC4(char sep)
{
	char *ret = NULL, *tmp;
	size_t nlen, rlen = 0;
	const struct kexalg *k;

	for (k = kexalgs; k->name != NULL; k++) {
		if (ret != NULL)
			ret[rlen++] = sep;
		nlen = FUNC3(k->name);
		if ((tmp = FUNC2(ret, rlen + nlen + 2)) == NULL) {
			FUNC0(ret);
			return NULL;
		}
		ret = tmp;
		FUNC1(ret + rlen, k->name, nlen + 1);
		rlen += nlen;
	}
	return ret;
}