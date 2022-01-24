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
 int EINVAL ; 
 int ENOMEM ; 
 int EOF ; 
 int /*<<< orphan*/  PAM_LOG_DEBUG ; 
 int errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (char**,size_t*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 

char *
FUNC8(FILE *f, int *lineno, size_t *lenp)
{
	char *word;
	size_t size, len;
	int ch, escape, quote;
	int serrno;

	errno = 0;

	/* skip initial whitespace */
	escape = quote = 0;
	while ((ch = FUNC3(f)) != EOF) {
		if (ch == '\n') {
			/* either EOL or line continuation */
			if (!escape)
				break;
			if (lineno != NULL)
				++*lineno;
			escape = 0;
		} else if (escape) {
			/* escaped something else */
			break;
		} else if (ch == '#') {
			/* comment: until EOL, no continuation */
			while ((ch = FUNC3(f)) != EOF)
				if (ch == '\n')
					break;
			break;
		} else if (ch == '\\') {
			escape = 1;
		} else if (!FUNC4(ch)) {
			break;
		}
	}
	if (ch == EOF)
		return (NULL);
	FUNC7(ch, f);
	if (ch == '\n')
		return (NULL);

	word = NULL;
	size = len = 0;
	while ((ch = FUNC1(f)) != EOF && (!FUNC4(ch) || quote || escape)) {
		if (ch == '\\' && !escape && quote != '\'') {
			/* escape next character */
			escape = ch;
		} else if ((ch == '\'' || ch == '"') && !quote && !escape) {
			/* begin quote */
			quote = ch;
			/* edge case: empty quoted string */
			if (FUNC6(&word, &size, &len, 0) != 0)
				return (NULL);
		} else if (ch == quote && !escape) {
			/* end quote */
			quote = 0;
		} else if (ch == '\n' && escape) {
			/* line continuation */
			escape = 0;
		} else {
			if (escape && quote && ch != '\\' && ch != quote &&
			    FUNC6(&word, &size, &len, '\\') != 0) {
				FUNC2(word);
				errno = ENOMEM;
				return (NULL);
			}
			if (FUNC6(&word, &size, &len, ch) != 0) {
				FUNC2(word);
				errno = ENOMEM;
				return (NULL);
			}
			escape = 0;
		}
		if (lineno != NULL && ch == '\n')
			++*lineno;
	}
	if (ch == EOF && FUNC0(f)) {
		serrno = errno;
		FUNC2(word);
		errno = serrno;
		return (NULL);
	}
	if (ch == EOF && (escape || quote)) {
		/* Missing escaped character or closing quote. */
		FUNC5(PAM_LOG_DEBUG, "unexpected end of file");
		FUNC2(word);
		errno = EINVAL;
		return (NULL);
	}
	FUNC7(ch, f);
	if (lenp != NULL)
		*lenp = len;
	return (word);
}