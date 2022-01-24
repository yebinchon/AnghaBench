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
typedef  int /*<<< orphan*/  buff ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 char* refdir ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,char const*) ; 

void
FUNC10(const char *name)
{
	char buff[1024];
	FILE *in, *out;

	FUNC9(buff, "%s/%s.uu", refdir, name);
	in = FUNC6(buff, "r");
	FUNC3("Couldn't open reference file %s", buff);
	FUNC2(in != NULL);
	if (in == NULL)
		return;
	/* Read up to and including the 'begin' line. */
	for (;;) {
		if (FUNC5(buff, sizeof(buff), in) == NULL) {
			/* TODO: This is a failure. */
			return;
		}
		if (FUNC8(buff, "begin ", 6) == 0)
			break;
	}
	/* Now, decode the rest and write it. */
	out = FUNC6(name, "wb");
	while (FUNC5(buff, sizeof(buff), in) != NULL) {
		char *p = buff;
		int bytes;

		if (FUNC8(buff, "end", 3) == 0)
			break;

		bytes = FUNC0(*p++);
		while (bytes > 0) {
			int n = 0;
			/* Write out 1-3 bytes from that. */
			if (bytes > 0) {
				FUNC2(FUNC1(p[0]));
				FUNC2(FUNC1(p[1]));
				n = FUNC0(*p++) << 18;
				n |= FUNC0(*p++) << 12;
				FUNC7(n >> 16, out);
				--bytes;
			}
			if (bytes > 0) {
				FUNC2(FUNC1(p[0]));
				n |= FUNC0(*p++) << 6;
				FUNC7((n >> 8) & 0xFF, out);
				--bytes;
			}
			if (bytes > 0) {
				FUNC2(FUNC1(p[0]));
				n |= FUNC0(*p++);
				FUNC7(n & 0xFF, out);
				--bytes;
			}
		}
	}
	FUNC4(out);
	FUNC4(in);
}