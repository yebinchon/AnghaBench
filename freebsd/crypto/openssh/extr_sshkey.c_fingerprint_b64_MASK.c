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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,size_t,char*,size_t) ; 
 char* FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 size_t FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static char *
FUNC7(const char *alg, u_char *dgst_raw, size_t dgst_raw_len)
{
	char *ret;
	size_t plen = FUNC6(alg) + 1;
	size_t rlen = ((dgst_raw_len + 2) / 3) * 4 + plen + 1;
	int r;

	if (dgst_raw_len > 65536 || (ret = FUNC1(1, rlen)) == NULL)
		return NULL;
	FUNC5(ret, alg, rlen);
	FUNC4(ret, ":", rlen);
	if (dgst_raw_len == 0)
		return ret;
	if ((r = FUNC0(dgst_raw, dgst_raw_len,
	    ret + plen, rlen - plen)) == -1) {
		FUNC2(ret, rlen);
		return NULL;
	}
	/* Trim padding characters from end */
	ret[FUNC3(ret, "=")] = '\0';
	return ret;
}