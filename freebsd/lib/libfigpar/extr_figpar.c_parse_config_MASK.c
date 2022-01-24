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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct figpar_config {int /*<<< orphan*/  (* action ) (struct figpar_config*,int,char*,char*) ;int /*<<< orphan*/ * directive; } ;
typedef  scalar_t__ ssize_t ;
typedef  int off_t ;

/* Variables and functions */
 int FIGPAR_BREAK_ON_EQUALS ; 
 int FIGPAR_BREAK_ON_SEMICOLON ; 
 int FIGPAR_CASE_SENSITIVE ; 
 int FIGPAR_REQUIRE_EQUALS ; 
 int FIGPAR_STRICT_EQUALS ; 
 int /*<<< orphan*/  FNM_NOESCAPE ; 
 int FNM_NOMATCH ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,char*,int) ; 
 char* FUNC7 (char*,int) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 scalar_t__ FUNC9 (char*,char*,char*) ; 
 int FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct figpar_config*,int,char*,char*) ; 

int
FUNC14(struct figpar_config options[], const char *path,
    int (*unknown)(struct figpar_config *option, uint32_t line,
    char *directive, char *value), uint16_t processing_options)
{
	uint8_t bequals;
	uint8_t bsemicolon;
	uint8_t case_sensitive;
	uint8_t comment = 0;
	uint8_t end;
	uint8_t found;
	uint8_t have_equals = 0;
	uint8_t quote;
	uint8_t require_equals;
	uint8_t strict_equals;
	char p[2];
	char *directive;
	char *t;
	char *value;
	int error;
	int fd;
	ssize_t r = 1;
	uint32_t dsize;
	uint32_t line = 1;
	uint32_t n;
	uint32_t vsize;
	uint32_t x;
	off_t charpos;
	off_t curpos;
	char rpath[PATH_MAX];

	/* Sanity check: if no options and no unknown function, return */
	if (options == NULL && unknown == NULL)
		return (-1);

	/* Processing options */
	bequals = (processing_options & FIGPAR_BREAK_ON_EQUALS) == 0 ? 0 : 1;
	bsemicolon =
		(processing_options & FIGPAR_BREAK_ON_SEMICOLON) == 0 ? 0 : 1;
	case_sensitive =
		(processing_options & FIGPAR_CASE_SENSITIVE) == 0 ? 0 : 1;
	require_equals =
		(processing_options & FIGPAR_REQUIRE_EQUALS) == 0 ? 0 : 1;
	strict_equals =
		(processing_options & FIGPAR_STRICT_EQUALS) == 0 ? 0 : 1;

	/* Initialize strings */
	directive = value = 0;
	vsize = dsize = 0;

	/* Resolve the file path */
	if (FUNC8(path, rpath) == 0)
		return (-1);

	/* Open the file */
	if ((fd = FUNC5(rpath, O_RDONLY)) < 0)
		return (-1);

	/* Read the file until EOF */
	while (r != 0) {
		r = FUNC6(fd, p, 1);

		/* skip to the beginning of a directive */
		while (r != 0 && (FUNC2(*p) || *p == '#' || comment ||
		    (bsemicolon && *p == ';'))) {
			if (*p == '#')
				comment = 1;
			else if (*p == '\n') {
				comment = 0;
				line++;
			}
			r = FUNC6(fd, p, 1);
		}
		/* Test for EOF; if EOF then no directive was found */
		if (r == 0) {
			FUNC0(fd);
			return (0);
		}

		/* Get the current offset */
		curpos = FUNC3(fd, 0, SEEK_CUR) - 1;
		if (curpos == -1) {
			FUNC0(fd);
			return (-1);
		}

		/* Find the length of the directive */
		for (n = 0; r != 0; n++) {
			if (FUNC2(*p))
				break;
			if (bequals && *p == '=') {
				have_equals = 1;
				break;
			}
			if (bsemicolon && *p == ';')
				break;
			r = FUNC6(fd, p, 1);
		}

		/* Test for EOF, if EOF then no directive was found */
		if (n == 0 && r == 0) {
			FUNC0(fd);
			return (0);
		}

		/* Go back to the beginning of the directive */
		error = (int)FUNC3(fd, curpos, SEEK_SET);
		if (error == (curpos - 1)) {
			FUNC0(fd);
			return (-1);
		}

		/* Allocate and read the directive into memory */
		if (n > dsize) {
			if ((directive = FUNC7(directive, n + 1)) == NULL) {
				FUNC0(fd);
				return (-1);
			}
			dsize = n;
		}
		r = FUNC6(fd, directive, n);

		/* Advance beyond the equals sign if appropriate/desired */
		if (bequals && *p == '=') {
			if (FUNC3(fd, 1, SEEK_CUR) != -1)
				r = FUNC6(fd, p, 1);
			if (strict_equals && FUNC2(*p))
				*p = '\n';
		}

		/* Terminate the string */
		directive[n] = '\0';

		/* Convert directive to lower case before comparison */
		if (!case_sensitive)
			FUNC12(directive);

		/* Move to what may be the start of the value */
		if (!(bsemicolon && *p == ';') &&
		    !(strict_equals && *p == '=')) {
			while (r != 0 && FUNC2(*p) && *p != '\n')
				r = FUNC6(fd, p, 1);
		}

		/* An equals sign may have stopped us, should we eat it? */
		if (r != 0 && bequals && *p == '=' && !strict_equals) {
			have_equals = 1;
			r = FUNC6(fd, p, 1);
			while (r != 0 && FUNC2(*p) && *p != '\n')
				r = FUNC6(fd, p, 1);
		}

		/* If no value, allocate a dummy value and jump to action */
		if (r == 0 || *p == '\n' || *p == '#' ||
		    (bsemicolon && *p == ';')) {
			/* Initialize the value if not already done */
			if (value == NULL && (value = FUNC4(1)) == NULL) {
				FUNC0(fd);
				return (-1);
			}
			value[0] = '\0';
			goto call_function;
		}

		/* Get the current offset */
		curpos = FUNC3(fd, 0, SEEK_CUR) - 1;
		if (curpos == -1) {
			FUNC0(fd);
			return (-1);
		}

		/* Find the end of the value */
		quote = 0;
		end = 0;
		while (r != 0 && end == 0) {
			/* Advance to the next character if we know we can */
			if (*p != '\"' && *p != '#' && *p != '\n' &&
			    (!bsemicolon || *p != ';')) {
				r = FUNC6(fd, p, 1);
				continue;
			}

			/*
			 * If we get this far, we've hit an end-key
			 */

			/* Get the current offset */
			charpos = FUNC3(fd, 0, SEEK_CUR) - 1;
			if (charpos == -1) {
				FUNC0(fd);
				return (-1);
			}

			/*
			 * Go back so we can read the character before the key
			 * to check if the character is escaped (which means we
			 * should continue).
			 */
			error = (int)FUNC3(fd, -2, SEEK_CUR);
			if (error == -3) {
				FUNC0(fd);
				return (-1);
			}
			r = FUNC6(fd, p, 1);

			/*
			 * Count how many backslashes there are (an odd number
			 * means the key is escaped, even means otherwise).
			 */
			for (n = 1; *p == '\\'; n++) {
				/* Move back another offset to read */
				error = (int)FUNC3(fd, -2, SEEK_CUR);
				if (error == -3) {
					FUNC0(fd);
					return (-1);
				}
				r = FUNC6(fd, p, 1);
			}

			/* Move offset back to the key and read it */
			error = (int)FUNC3(fd, charpos, SEEK_SET);
			if (error == (charpos - 1)) {
				FUNC0(fd);
				return (-1);
			}
			r = FUNC6(fd, p, 1);

			/*
			 * If an even number of backslashes was counted meaning
			 * key is not escaped, we should evaluate what to do.
			 */
			if ((n & 1) == 1) {
				switch (*p) {
				case '\"':
					/*
				 	 * Flag current sequence of characters
					 * to follow as being quoted (hashes
					 * are not considered comments).
					 */
					quote = !quote;
					break;
				case '#':
					/*
					 * If we aren't in a quoted series, we
					 * just hit an inline comment and have
					 * found the end of the value.
					 */
					if (!quote)
						end = 1;
					break;
				case '\n':
					/*
					 * Newline characters must always be
					 * escaped, whether inside a quoted
					 * series or not, otherwise they
					 * terminate the value.
					 */
					end = 1;
				case ';':
					if (!quote && bsemicolon)
						end = 1;
					break;
				}
			} else if (*p == '\n')
				/* Escaped newline character. increment */
				line++;

			/* Advance to the next character */
			r = FUNC6(fd, p, 1);
		}

		/* Get the current offset */
		charpos = FUNC3(fd, 0, SEEK_CUR) - 1;
		if (charpos == -1) {
			FUNC0(fd);
			return (-1);
		}

		/* Get the length of the value */
		n = (uint32_t)(charpos - curpos);
		if (r != 0) /* more to read, but don't read ending key */
			n--;

		/* Move offset back to the beginning of the value */
		error = (int)FUNC3(fd, curpos, SEEK_SET);
		if (error == (curpos - 1)) {
			FUNC0(fd);
			return (-1);
		}

		/* Allocate and read the value into memory */
		if (n > vsize) {
			if ((value = FUNC7(value, n + 1)) == NULL) {
				FUNC0(fd);
				return (-1);
			}
			vsize = n;
		}
		r = FUNC6(fd, value, n);

		/* Terminate the string */
		value[n] = '\0';

		/* Cut trailing whitespace off by termination */
		t = value + n;
		while (FUNC2(*--t))
			*t = '\0';

		/* Escape the escaped quotes (replaceall is in string_m.c) */
		x = FUNC10(value, "\\\""); /* in string_m.c */
		if (x != 0 && (n + x) > vsize) {
			if ((value = FUNC7(value, n + x + 1)) == NULL) {
				FUNC0(fd);
				return (-1);
			}
			vsize = n + x;
		}
		if (FUNC9(value, "\\\"", "\\\\\"") < 0) {
			/* Replace operation failed for some unknown reason */
			FUNC0(fd);
			return (-1);
		}

		/* Remove all new line characters */
		if (FUNC9(value, "\\\n", "") < 0) {
			/* Replace operation failed for some unknown reason */
			FUNC0(fd);
			return (-1);
		}

		/* Resolve escape sequences */
		FUNC11(value); /* in string_m.c */

call_function:
		/* Abort if we're seeking only assignments */
		if (require_equals && !have_equals)
			return (-1);

		found = have_equals = 0; /* reset */

		/* If there are no options defined, call unknown and loop */
		if (options == NULL && unknown != NULL) {
			error = unknown(NULL, line, directive, value);
			if (error != 0) {
				FUNC0(fd);
				return (error);
			}
			continue;
		}

		/* Loop through the array looking for a match for the value */
		for (n = 0; options[n].directive != NULL; n++) {
			error = FUNC1(options[n].directive, directive,
			    FNM_NOESCAPE);
			if (error == 0) {
				found = 1;
				/* Call function for array index item */
				if (options[n].action != NULL) {
					error = options[n].action(
					    &options[n],
					    line, directive, value);
					if (error != 0) {
						FUNC0(fd);
						return (error);
					}
				}
			} else if (error != FNM_NOMATCH) {
				/* An error has occurred */
				FUNC0(fd);
				return (-1);
			}
		}
		if (!found && unknown != NULL) {
			/*
			 * No match was found for the value we read from the
			 * file; call function designated for unknown values.
			 */
			error = unknown(NULL, line, directive, value);
			if (error != 0) {
				FUNC0(fd);
				return (error);
			}
		}
	}

	FUNC0(fd);
	return (0);
}