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
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int MAXPATHLEN ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int FUNC6 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC7(char *lm_p, size_t lm_len)
{
	char *cp, *f, *t, *c, *p;
	char prog[MAXPATHLEN];
	/* allow includedir + full length path */
	char line[MAXPATHLEN + 13];
	size_t cnt, i;

	cnt = 0;
	p = NULL;
	while (cnt < lm_len) {
		i = 0;
		while (cnt < lm_len && lm_p[cnt] != '\n' &&
		    i < sizeof(line) - 1) {
			line[i] = lm_p[cnt];
			cnt++;
			i++;
		}
		line[i] = '\0';
		while (cnt < lm_len && lm_p[cnt] != '\n')
			cnt++;
		/* skip over nl */
		cnt++;

		cp = &line[0];
		t = f = c = NULL;

		/* Skip over leading space */
		while (FUNC4(*cp))
			cp++;

		/* Found a comment or EOL */
		if (FUNC0(*cp))
			continue;

		/* Found a constraint selector */
		if (*cp == '[') {
			cp++;

			/* Skip leading space */
			while (FUNC4(*cp))
				cp++;

			/* Found comment, EOL or end of selector */
			if  (FUNC0(*cp) || *cp == ']')
				continue;

			c = cp++;
			/* Skip to end of word */
			while (!FUNC4(*cp) && !FUNC0(*cp) && *cp != ']')
				cp++;

			/* Skip and zero out trailing space */
			while (FUNC4(*cp))
				*cp++ = '\0';

			/* Check if there is a closing brace */
			if (*cp != ']')
				continue;

			/* Terminate string if there was no trailing space */
			*cp++ = '\0';

			/*
			 * There should be nothing except whitespace or comment
			  from this point to the end of the line.
			 */
			while (FUNC4(*cp))
				cp++;
			if (!FUNC0(*cp))
				continue;

			if (FUNC6(prog, c, sizeof prog) >= sizeof prog)
				continue;
			p = prog;
			continue;
		}

		/* Parse the 'from' candidate. */
		f = cp++;
		while (!FUNC4(*cp) && !FUNC0(*cp))
			cp++;

		/* Skip and zero out the trailing whitespace */
		while (FUNC4(*cp))
			*cp++ = '\0';

		/* Found a comment or EOL */
		if (FUNC0(*cp))
			continue;

		/* Parse 'to' mapping */
		t = cp++;
		while (!FUNC4(*cp) && !FUNC0(*cp))
			cp++;

		/* Skip and zero out the trailing whitespace */
		while (FUNC4(*cp))
			*cp++ = '\0';

		/* Should be no extra tokens at this point */
		if (!FUNC0(*cp))
			continue;

		*cp = '\0';
		if (FUNC5(f, "includedir") == 0)
			FUNC2(t);
		else if (FUNC5(f, "include") == 0)
			FUNC3(t);
		else
			FUNC1(p, f, t);
	}
}