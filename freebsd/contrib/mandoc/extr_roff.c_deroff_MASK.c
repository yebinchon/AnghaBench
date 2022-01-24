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
struct roff_node {scalar_t__ type; char* string; struct roff_node* next; struct roff_node* child; } ;

/* Variables and functions */
 scalar_t__ ROFFT_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,char*,int,char*) ; 
 char* FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char) ; 
 size_t FUNC5 (char*) ; 

void
FUNC6(char **dest, const struct roff_node *n)
{
	char	*cp;
	size_t	 sz;

	if (n->type != ROFFT_TEXT) {
		for (n = n->child; n != NULL; n = n->next)
			FUNC6(dest, n);
		return;
	}

	/* Skip leading whitespace. */

	for (cp = n->string; *cp != '\0'; cp++) {
		if (cp[0] == '\\' && cp[1] != '\0' &&
		    FUNC4(" %&0^|~", cp[1]) != NULL)
			cp++;
		else if ( ! FUNC1((unsigned char)*cp))
			break;
	}

	/* Skip trailing backslash. */

	sz = FUNC5(cp);
	if (sz > 0 && cp[sz - 1] == '\\')
		sz--;

	/* Skip trailing whitespace. */

	for (; sz; sz--)
		if ( ! FUNC1((unsigned char)cp[sz-1]))
			break;

	/* Skip empty strings. */

	if (sz == 0)
		return;

	if (*dest == NULL) {
		*dest = FUNC3(cp, sz);
		return;
	}

	FUNC2(&cp, "%s %*s", *dest, (int)sz, cp);
	FUNC0(*dest);
	*dest = cp;
}