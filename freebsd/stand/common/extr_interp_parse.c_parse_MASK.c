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
 size_t PARSE_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ ** args ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char**,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int*,char*) ; 
 char FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 scalar_t__ FUNC10 (int) ; 
 size_t FUNC11 (size_t,int /*<<< orphan*/ ) ; 
 char* FUNC12 (char*,char) ; 
 size_t FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,size_t) ; 
 char* FUNC15 (char*) ; 

int
FUNC16(int *argc, char ***argv, const char *str)
{
	int ac;
	char *val, *p, *q, *copy = NULL;
	size_t i = 0;
	char token, tmp, quote, dquote, *buf;
	enum { STR, VAR, WHITE } state;

	ac = *argc = 0;
	dquote = quote = 0;
	if (!str || (p = copy = FUNC1(str)) == NULL)
		return 1;

	/* Initialize vector and state */
	FUNC3();
	state = STR;
	buf = (char *)FUNC10(PARSE_BUFSIZE);
	token = 0;

	/* And awaaaaaaaaay we go! */
	while (*p) {
		switch (state) {
		case STR:
			if ((*p == '\\') && p[1]) {
				p++;
				FUNC0(i == (PARSE_BUFSIZE - 1));
				buf[i++] = *p++;
			} else if (FUNC8(*p)) {
				quote = quote ? 0 : *p;
				if (dquote) { /* keep quote */
					FUNC0(i == (PARSE_BUFSIZE - 1));
					buf[i++] = *p++;
				} else
					++p;
			} else if (FUNC7(*p)) {
				dquote = dquote ? 0 : *p;
				if (quote) { /* keep dquote */
					FUNC0(i == (PARSE_BUFSIZE - 1));
					buf[i++] = *p++;
				} else
					++p;
			} else if (FUNC9(*p) && !quote && !dquote) {
				state = WHITE;
				if (i) {
					buf[i] = '\0';
					FUNC0(FUNC5(&ac, buf));
					i = 0;
				}
				++p;
			} else if (*p == '$' && !quote) {
				token = FUNC6(*(p + 1));
				if (token)
					p += 2;
				else
					++p;
				state = VAR;
			} else {
				FUNC0(i == (PARSE_BUFSIZE - 1));
				buf[i++] = *p++;
			}
			break;

		case WHITE:
			if (FUNC9(*p))
				++p;
			else
				state = STR;
			break;

		case VAR:
			if (token) {
				FUNC0((q = FUNC12(p, token)) == NULL);
			} else {
				q = p;
				while (*q && !FUNC9(*q))
					++q;
			}
			tmp = *q;
			*q = '\0';
			if ((val = FUNC15(p)) != NULL) {
				size_t len = FUNC13(val);

				FUNC14(buf + i, val, PARSE_BUFSIZE - (i + 1));
				i += FUNC11(len, PARSE_BUFSIZE - 1);
			}
			*q = tmp;	/* restore value */
			p = q + (token ? 1 : 0);
			state = STR;
			break;
		}
	}
	/* missing terminating ' or " */
	FUNC0(quote || dquote);
	/* If at end of token, add it */
	if (i && state == STR) {
		buf[i] = '\0';
		FUNC0(FUNC5(&ac, buf));
	}
	args[ac] = NULL;
	*argc = ac;
	*argv = (char **)FUNC10((sizeof(char *) * ac + 1));
	FUNC2(args, *argv, sizeof(char *) * ac + 1);
	FUNC4(buf);
	FUNC4(copy);
	return 0;
}