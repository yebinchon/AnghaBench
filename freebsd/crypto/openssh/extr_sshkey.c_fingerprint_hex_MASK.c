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
typedef  int /*<<< orphan*/  hex ;

/* Variables and functions */
 char* FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static char *
FUNC5(const char *alg, u_char *dgst_raw, size_t dgst_raw_len)
{
	char *retval, hex[5];
	size_t i, rlen = dgst_raw_len * 3 + FUNC4(alg) + 2;

	if (dgst_raw_len > 65536 || (retval = FUNC0(1, rlen)) == NULL)
		return NULL;
	FUNC3(retval, alg, rlen);
	FUNC2(retval, ":", rlen);
	for (i = 0; i < dgst_raw_len; i++) {
		FUNC1(hex, sizeof(hex), "%s%02x",
		    i > 0 ? ":" : "", dgst_raw[i]);
		FUNC2(retval, hex, rlen);
	}
	return retval;
}