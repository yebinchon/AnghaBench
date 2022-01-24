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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 char** filenames ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*) ; 

__attribute__((used)) static void
FUNC13(void)
{
	char buff[260];
	char buff2[260];
	int i;
	int LOOP_MAX;

	FUNC8();

	/* Log that we'll be omitting some checks. */
	if (!FUNC6()) {
		FUNC11("Symlink checks");
	}

	FUNC2("original", 0775);
	FUNC1(0, FUNC7("original"));
	LOOP_MAX = FUNC9();

	FUNC2("f", 0775);
	FUNC2("l", 0775);
	FUNC2("m", 0775);
	FUNC2("s", 0775);
	FUNC2("d", 0775);

	for (i = 1; i < LOOP_MAX; i++) {
		FUNC10("Internal sanity check failed: i = %d", i);
		FUNC0(filenames[i] != NULL);

		FUNC12(buff, "f/%s", filenames[i]);
		FUNC3(buff, 0777, buff);

		/* Create a link named "l/abcdef..." to the above. */
		FUNC12(buff2, "l/%s", filenames[i]);
		FUNC4(buff2, buff);

		/* Create a link named "m/abcdef..." to the above. */
		FUNC12(buff2, "m/%s", filenames[i]);
		FUNC4(buff2, buff);

		if (FUNC6()) {
			/* Create a symlink named "s/abcdef..." to the above. */
			FUNC12(buff, "s/%s", filenames[i]);
			FUNC12(buff2, "../f/%s", filenames[i]);
			FUNC10("buff=\"%s\" buff2=\"%s\"", buff, buff2);
			FUNC5(buff, buff2, 0);
		}
		/* Create a dir named "d/abcdef...". */
		buff[0] = 'd';
		FUNC10("buff=\"%s\"", buff);
		FUNC2(buff, 0775);
	}

	FUNC1(0, FUNC7(".."));
}