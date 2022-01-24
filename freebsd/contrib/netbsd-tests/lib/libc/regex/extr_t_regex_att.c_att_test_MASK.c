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
struct atf_tc {int dummy; } ;
typedef  char regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  data_path ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,...) ; 
 int MAXPATHLEN ; 
 int REG_BASIC ; 
 int REG_EXTENDED ; 
 int REG_NOSPEC ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (struct atf_tc const*,char*) ; 
 scalar_t__ FUNC4 (char*,char*,size_t) ; 
 char* FUNC5 (size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t,char*,size_t) ; 
 int /*<<< orphan*/  delim ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ *,size_t*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int*,int*) ; 
 int FUNC14 (char*) ; 
 size_t FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int FUNC17 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC18 (int /*<<< orphan*/ *,char*,size_t,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sep ; 
 int /*<<< orphan*/  FUNC20 (char*,int,char*,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC21 (char*,char) ; 
 scalar_t__ FUNC22 (char*,char*) ; 
 char* FUNC23 (char*) ; 
 char* FUNC24 (char*,int /*<<< orphan*/ ) ; 
 int FUNC25 (char*,char*) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 

__attribute__((used)) static void
FUNC27(const struct atf_tc *tc, const char *data_name)
{
	regex_t re;
	char *line, *lastpattern = NULL, data_path[MAXPATHLEN];
	size_t len, lineno = 0;
	int skipping = 0;
	FILE *input_file;

	FUNC20(data_path, sizeof(data_path), "%s/data/%s.dat",
	    FUNC3(tc, "srcdir"), data_name);

	input_file = FUNC9(data_path, "r");
	if (input_file == NULL)
		FUNC2("Failed to open input file %s", data_path);

	for (; (line = FUNC10(input_file, &len, &lineno, delim, 0))
	    != NULL; FUNC12(line)) {
		char *name, *pattern, *input, *matches, *comment;
		regmatch_t *pm;
		size_t nm;
#ifdef DEBUG
		fprintf(stderr, "[%s]\n", line);
#endif
		if ((name = FUNC24(line, sep)) == NULL)
			continue;

		/*
		 * We check these early so that we skip the lines quickly
		 * in order to do more strict testing on the other arguments
		 * The same characters are also tested in the switch below
		 */
		if (*name == '}') {
			skipping = 0;
			continue;
		}
		if (skipping)
			continue;
		if (*name == ';' || *name == '#' || FUNC22(name, "NOTE") == 0)
			continue;
		if (*name == ':') {
			/* Skip ":HA#???:" prefix */
			while (*++name && *name != ':')
				continue;
			if (*name)
				name++;
		}

		FUNC1((pattern = FUNC24(NULL, sep)) != NULL,
			"Missing pattern at line %zu", lineno);
		FUNC1((input = FUNC24(NULL, sep)) != NULL,
			"Missing input at line %zu", lineno);

		if (FUNC21(name, '$')) {
			FUNC0(FUNC25(pattern, pattern) != -1);
			FUNC0(FUNC25(input, input) != -1);
		}


		if (FUNC22(input, "NULL") == 0)
			*input = '\0';

		if (FUNC22(pattern, "SAME") == 0) {
			FUNC0(lastpattern != NULL);
			pattern = lastpattern;
		} else {
			FUNC12(lastpattern);
			FUNC0((lastpattern = FUNC23(pattern)) != NULL);
		}

		FUNC1((matches = FUNC24(NULL, sep)) != NULL,
		    "Missing matches at line %zu", lineno);

		comment = FUNC24(NULL, sep);
		switch (*name) {
		case '{':	/* Begin optional implementation */
			if (FUNC16(comment)) {
				skipping++;
				continue;
			}
			name++;	/* We have it, so ignore */
			break;
		case '}':	/* End optional implementation */
			skipping = 0;
			continue;
		case '?':	/* Optional */
		case '|':	/* Alternative */
			if (FUNC26(comment))
				continue;
			name++;	/* We have it, so ignore */
			break;
		case '#':	/* Comment */
		case ';':	/* Skip */
			continue;
		default:
			break;
		}

		/* XXX: Our bug */
		if (FUNC4(pattern, input, lineno))
			continue;

		int comp, exec;
		if (*matches != '(') {
			FUNC13(matches, &comp, &exec);
			pm = NULL;
			nm = 0;
		} else {
			comp = exec = 0;
			nm = FUNC15(matches);
			FUNC0((pm = FUNC5(nm, sizeof(*pm))) != NULL);
		}



		int iflags = FUNC14(name);
		for (; *name; name++) {
			int flags;
			switch (*name) {
			case 'B':
				flags = REG_BASIC;
				break;
			case 'E':
				flags = REG_EXTENDED;
				break;
			case 'L':
				flags = REG_NOSPEC;
				break;
			default:
				FUNC1(0, "Bad name %c", *name);
				continue;
			}
			int c = FUNC17(&re, pattern, flags | iflags);
			FUNC1(c == comp,
			    "regcomp returned %d for pattern %s at line %zu",
			    c, pattern, lineno);
			if (c)
				continue;
			int e = FUNC18(&re, input, nm, pm, 0);
			FUNC1(e == exec, "Expected error %d,"
			    " got %d at line %zu", exec, e, lineno);
			FUNC7(matches, nm, pm, lineno);
			FUNC6(comment, lineno);
			FUNC19(&re);
		}
		FUNC12(pm);
	}

	FUNC8(input_file);
}