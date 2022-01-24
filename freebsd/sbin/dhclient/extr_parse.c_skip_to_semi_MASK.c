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
 int EOF ; 
 int LBRACE ; 
 int RBRACE ; 
 int SEMI ; 
 int FUNC0 (char**,int /*<<< orphan*/ *) ; 
 int FUNC1 (char**,int /*<<< orphan*/ *) ; 

void
FUNC2(FILE *cfile)
{
	int brace_count = 0, token;
	char *val;

	do {
		token = FUNC1(&val, cfile);
		if (token == RBRACE) {
			if (brace_count) {
				token = FUNC0(&val, cfile);
				if (!--brace_count)
					return;
			} else
				return;
		} else if (token == LBRACE) {
			brace_count++;
		} else if (token == SEMI && !brace_count) {
			token = FUNC0(&val, cfile);
			return;
		} else if (token == '\n') {
			/*
			 * EOL only happens when parsing
			 * /etc/resolv.conf, and we treat it like a
			 * semicolon because the resolv.conf file is
			 * line-oriented.
			 */
			token = FUNC0(&val, cfile);
			return;
		}
		token = FUNC0(&val, cfile);
	} while (token != EOF);
}