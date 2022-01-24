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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,int*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (char*,char*,...) ; 

int
FUNC7 (int argc, char **argv)
{
	int i, col, r;
	const char *name = "ucl_chartable";
	bool need_or;
	char valbuf[2048];

	col = 0;

	if (argc > 1) {
		name = argv[1];
	}

	FUNC5 ("static const unsigned int %s[256] = {\n", name);

	for (i = 0; i < 256; i ++) {
		need_or = false;
		r = 0;
		/* UCL_CHARACTER_VALUE_END */

		if (i == ' ' || i == '\t') {
			r += FUNC4 ("UCL_CHARACTER_WHITESPACE", &need_or, valbuf + r);
		}
		if (FUNC3 (i)) {
			r += FUNC4 ("UCL_CHARACTER_WHITESPACE_UNSAFE", &need_or, valbuf + r);
		}
		if (FUNC0 (i) || i >= 0x80 || i == '/' || i == '_') {
			r += FUNC4 ("UCL_CHARACTER_KEY_START", &need_or, valbuf + r);
		}
		if (FUNC0 (i) || i == '-' || i == '_' || i == '/' || i == '.' || i >= 0x80) {
			r += FUNC4 ("UCL_CHARACTER_KEY", &need_or, valbuf + r);
		}
		if (i == 0 || i == '\r' || i == '\n' || i == ']' || i == '}' || i == ';' || i == ',' || i == '#') {
			r += FUNC4 ("UCL_CHARACTER_VALUE_END", &need_or, valbuf + r);
		}
		else {
			if (FUNC2 (i) || i >= 0x80) {
				r += FUNC4 ("UCL_CHARACTER_VALUE_STR", &need_or, valbuf + r);
			}
			if (FUNC1 (i) || i == '-') {
				r += FUNC4 ("UCL_CHARACTER_VALUE_DIGIT_START", &need_or, valbuf + r);
			}
			if (FUNC0 (i) || i == '.' || i == '-' || i == '+') {
				r += FUNC4 ("UCL_CHARACTER_VALUE_DIGIT", &need_or, valbuf + r);
			}
		}
		if (i == '"' || i == '\\' || i == '/' || i == 'b' ||
			i == 'f' || i == 'n' || i == 'r' || i == 't' || i == 'u') {
			r += FUNC4 ("UCL_CHARACTER_ESCAPE", &need_or, valbuf + r);
		}
		if (i == ' ' || i == '\t' || i == ':' || i == '=') {
			r += FUNC4 ("UCL_CHARACTER_KEY_SEP", &need_or, valbuf + r);
		}
		if (i == '\n' || i == '\r' || i == '\\' || i == '\b' || i == '\t' ||
				i == '"' || i == '\f') {
			r += FUNC4 ("UCL_CHARACTER_JSON_UNSAFE", &need_or, valbuf + r);
		}
		if (i == '\n' || i == '\r' || i == '\\' || i == '\b' || i == '\t' ||
				i == '"' || i == '\f' || i == '=' || i == ':' || i == '{' || i == '[' || i == ' ') {
			r += FUNC4 ("UCL_CHARACTER_UCL_UNSAFE", &need_or, valbuf + r);
		}

		if (!need_or) {
			r += FUNC4 ("UCL_CHARACTER_DENIED", &need_or, valbuf + r);
		}

		if (FUNC2 (i)) {
			r += FUNC6 (valbuf + r, " /* %c */", i);
		}
		if (i != 255) {
			r += FUNC6 (valbuf + r, ", ");
		}
		col += r;
		if (col > 80) {
			FUNC5 ("\n%s", valbuf);
			col = r;
		}
		else {
			FUNC5 ("%s", valbuf);
		}
	}
	FUNC5 ("\n}\n");

	return 0;
}