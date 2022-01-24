#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int rm_so; int rm_eo; } ;
typedef  TYPE_1__ regmatch_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,size_t,char*,...) ; 
 char* FUNC5 (char const*) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static void
FUNC7(const char *matches, size_t nm, const regmatch_t *pm,
    size_t lineno)
{
	if (nm == 0)
		return;

	char *res;
	size_t len = FUNC6(matches) + 1, off = 0;

	FUNC1((res = FUNC5(matches)) != NULL);
	for (size_t i = 0; i < nm; i++) {
		int l;
		if (pm[i].rm_so == -1 && pm[i].rm_eo == -1)
			l = FUNC4(res + off, len - off, "(?,?)");
		else
			l = FUNC4(res + off, len - off, "(%lld,%lld)",
			    (long long)pm[i].rm_so, (long long)pm[i].rm_eo);
		FUNC2((size_t) l < len - off, "String too long %s"
		    " cur=%d, max=%zu", res, l, len - off);
		off += l;
	}
	FUNC0(res, matches, " at line %zu", lineno);
	FUNC3(res);
}