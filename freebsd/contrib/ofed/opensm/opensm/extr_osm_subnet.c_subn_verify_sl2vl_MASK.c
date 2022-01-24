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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*,char*,char**) ; 
 long FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(char **sl2vl, const char *prefix)
{
	char *str, *tok, *end, *ptr;
	int count = 0;

	if (*sl2vl == NULL)
		return;

	str = FUNC2(*sl2vl);

	tok = FUNC3(str, ",\n", &ptr);
	while (tok) {
		long vl = FUNC4(tok, &end, 0);

		if (*end)
			FUNC1(" Warning: Cached Option %s_sl2vl:vl=%s "
				   "improperly formatted\n", prefix, tok);
		else if (vl < 0 || vl > 15)
			FUNC1(" Warning: Cached Option %s_sl2vl:vl=%ld "
				   "out of range\n", prefix, vl);

		count++;
		tok = FUNC3(NULL, ",\n", &ptr);
	}

	if (count < 16)
		FUNC1(" Warning: Cached Option %s_sl2vl: < 16 VLs "
			   "listed\n", prefix);
	else if (count > 16)
		FUNC1(" Warning: Cached Option %s_sl2vl: > 16 listed: "
			   "excess VLs will be dropped\n", prefix);

	FUNC0(str);
}