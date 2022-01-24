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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*) ; 
 char* FUNC11 (char*,char*,char**) ; 
 int FUNC12 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  threshold_str ; 

__attribute__((used)) static void FUNC13(char *threshold_file)
{
	char buf[1024];
	int val = 0;
	FILE *thresf = FUNC3(threshold_file, "r");
	char *p_prefix, *p_last;
	char *name;
	char *val_str;
	char str[64];

	if (!thresf)
		return;

	FUNC7(str, 63, "Thresholds: ");
	threshold_str = FUNC5(FUNC10(str)+1);
	if (!threshold_str) {
		FUNC4(stderr, "Failed to allocate memory: %s\n",
			FUNC9(errno));
		FUNC0(1);
	}
	FUNC8(threshold_str, str);
	while (FUNC2(buf, sizeof buf, thresf) != NULL) {
		p_prefix = FUNC11(buf, "\n", &p_last);
		if (!p_prefix)
			continue; /* ignore blank lines */

		if (*p_prefix == '#')
			continue; /* ignore comment lines */

		name = FUNC11(p_prefix, "=", &p_last);
		val_str = FUNC11(NULL, "\n", &p_last);

		val = FUNC12(val_str, NULL, 0);
		FUNC6(name, val);
	}

	FUNC1(thresf);
}