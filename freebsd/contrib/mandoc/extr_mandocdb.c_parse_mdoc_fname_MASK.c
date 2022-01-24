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
struct roff_node {scalar_t__ type; char* string; scalar_t__ sec; } ;
struct mpage {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAME_SYN ; 
 scalar_t__ ROFFT_TEXT ; 
 scalar_t__ SEC_SYNOPSIS ; 
 int /*<<< orphan*/  TYPE_Fn ; 
 int /*<<< orphan*/  FUNC0 (struct mpage*,char*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (char*,char*) ; 

__attribute__((used)) static void
FUNC2(struct mpage *mpage, const struct roff_node *n)
{
	char	*cp;
	size_t	 sz;

	if (n->type != ROFFT_TEXT)
		return;

	/* Skip function pointer punctuation. */

	cp = n->string;
	while (*cp == '(' || *cp == '*')
		cp++;
	sz = FUNC1(cp, "()");

	FUNC0(mpage, cp, sz, TYPE_Fn);
	if (n->sec == SEC_SYNOPSIS)
		FUNC0(mpage, cp, sz, NAME_SYN);
}