#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  insertstr ;
struct TYPE_4__ {int sl_cur; char** sl_str; } ;
typedef  TYPE_1__ StringList ;

/* Variables and functions */
 unsigned char CC_ERROR ; 
 unsigned char CC_REDISPLAY ; 
 unsigned char CC_REFRESH ; 
 unsigned char CC_REFRESH_BEEP ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  comparstr ; 
 int /*<<< orphan*/  el ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char**,size_t,int,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (char*) ; 
 int /*<<< orphan*/  ttyout ; 

__attribute__((used)) static unsigned char
FUNC6(char *word, int list, StringList *words)
{
	char insertstr[MAXPATHLEN];
	char *lastmatch, *p;
	size_t i, j;
	size_t matchlen, wordlen;

	wordlen = FUNC5(word);
	if (words->sl_cur == 0)
		return (CC_ERROR);	/* no choices available */

	if (words->sl_cur == 1) {	/* only once choice available */
		p = words->sl_str[0] + wordlen;
		if (*p == '\0')		/* at end of word? */
			return (CC_REFRESH);
		FUNC1(insertstr, sizeof(insertstr), p, FUNC5(p));
		if (FUNC0(el, insertstr) == -1)
			return (CC_ERROR);
		else
			return (CC_REFRESH);
	}

	if (!list) {
		matchlen = 0;
		lastmatch = words->sl_str[0];
		matchlen = FUNC5(lastmatch);
		for (i = 1 ; i < words->sl_cur ; i++) {
			for (j = wordlen ; j < FUNC5(words->sl_str[i]); j++)
				if (lastmatch[j] != words->sl_str[i][j])
					break;
			if (j < matchlen)
				matchlen = j;
		}
		if (matchlen > wordlen) {
			FUNC1(insertstr, sizeof(insertstr),
			    lastmatch + wordlen, matchlen - wordlen);
			if (FUNC0(el, insertstr) == -1)
				return (CC_ERROR);
			else
				return (CC_REFRESH_BEEP);
		}
	}

	FUNC3('\n', ttyout);
	FUNC4(words->sl_str, words->sl_cur, sizeof(char *), comparstr);
	FUNC2(words);
	return (CC_REDISPLAY);
}