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
struct string_list {struct string_list* next; int /*<<< orphan*/  string; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int COMMA ; 
 int SEMI ; 
 int STRING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 struct string_list* FUNC2 (size_t) ; 
 int FUNC3 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*) ; 

void
FUNC7(FILE *cfile, struct string_list **lp, int multiple)
{
	int			 token;
	char			*val;
	size_t			 valsize;
	struct string_list	*cur, *tmp;

	/* Find the last medium in the media list. */
	if (*lp)
		for (cur = *lp; cur->next; cur = cur->next)
			;	/* nothing */
	else
		cur = NULL;

	do {
		token = FUNC3(&val, cfile);
		if (token != STRING) {
			FUNC4("Expecting media options.");
			FUNC5(cfile);
			return;
		}

		valsize = FUNC6(val) + 1;
		tmp = FUNC2(valsize);
		if (tmp == NULL)
			FUNC0("no memory for string list entry.");
		FUNC1(tmp->string, val, valsize);
		tmp->next = NULL;

		/* Store this medium at the end of the media list. */
		if (cur)
			cur->next = tmp;
		else
			*lp = tmp;
		cur = tmp;

		token = FUNC3(&val, cfile);
	} while (multiple && token == COMMA);

	if (token != SEMI) {
		FUNC4("expecting semicolon.");
		FUNC5(cfile);
	}
}