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
typedef  scalar_t__ follby ;

/* Variables and functions */
 scalar_t__ FOLLBY_NON_ACCEPTING ; 
 int SCANNER_INIT_S ; 
 char FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * sst ; 

__attribute__((used)) static int
FUNC4(
	char *lexeme,
	follby *pfollowedby
	)
{
	follby fb;
	int curr_s;		/* current state index */
	int token;
	int i;

	curr_s = SCANNER_INIT_S;
	token = 0;

	for (i = 0; lexeme[i]; i++) {
		while (curr_s && (lexeme[i] != FUNC0(sst[curr_s])))
			curr_s = FUNC3(sst[curr_s]);

		if (curr_s && (lexeme[i] == FUNC0(sst[curr_s]))) {
			if ('\0' == lexeme[i + 1]
			    && FOLLBY_NON_ACCEPTING 
			       != FUNC1(sst[curr_s])) {
				fb = FUNC1(sst[curr_s]);
				*pfollowedby = fb;
				token = curr_s;
				break;
			}
			curr_s = FUNC2(sst[curr_s]);
		} else
			break;
	}

	return token;
}