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
struct cmd {char* c_name; } ;
typedef  int /*<<< orphan*/  StringList ;

/* Variables and functions */
 unsigned char CC_ERROR ; 
 unsigned char CC_REFRESH ; 
 struct cmd* cmdtab ; 
 unsigned char FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  el ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*,size_t) ; 

__attribute__((used)) static unsigned char
FUNC8(char *word, int list)
{
	struct cmd *c;
	StringList *words;
	size_t wordlen;
	unsigned char rv;

	words = FUNC3();
	wordlen = FUNC6(word);

	for (c = cmdtab; c->c_name != NULL; c++) {
		if (wordlen > FUNC6(c->c_name))
			continue;
		if (FUNC7(word, c->c_name, wordlen) == 0)
			FUNC2(words, FUNC4(c->c_name));
	}

	rv = FUNC0(word, list, words);
	if (rv == CC_REFRESH) {
		if (FUNC1(el, " ") == -1)
			rv = CC_ERROR;
	}
	FUNC5(words, 1);
	return (rv);
}