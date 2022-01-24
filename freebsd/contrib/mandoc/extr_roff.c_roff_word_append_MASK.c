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
struct roff_node {char* string; } ;
struct roff_man {int /*<<< orphan*/  next; int /*<<< orphan*/  roff; struct roff_node* last; } ;

/* Variables and functions */
 int /*<<< orphan*/  ROFF_NEXT_SIBLING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*) ; 

void
FUNC3(struct roff_man *man, const char *word)
{
	struct roff_node	*n;
	char			*addstr, *newstr;

	n = man->last;
	addstr = FUNC2(man->roff, word);
	FUNC1(&newstr, "%s %s", n->string, addstr);
	FUNC0(addstr);
	FUNC0(n->string);
	n->string = newstr;
	man->next = ROFF_NEXT_SIBLING;
}