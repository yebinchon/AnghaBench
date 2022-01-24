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
struct roff_node {scalar_t__ sec; scalar_t__ type; char* string; struct roff_node* next; struct roff_node* child; } ;
struct roff_meta {int dummy; } ;
struct mpage {int dummy; } ;

/* Variables and functions */
 scalar_t__ ROFFT_TEXT ; 
 scalar_t__ SEC_SYNOPSIS ; 
 int /*<<< orphan*/  TYPE_In ; 
 int /*<<< orphan*/  FUNC0 (struct mpage*,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 size_t FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(struct mpage *mpage, const struct roff_meta *meta,
	const struct roff_node *n)
{
	char		*start, *end;
	size_t		 sz;

	if (SEC_SYNOPSIS != n->sec ||
	    NULL == (n = n->child) ||
	    n->type != ROFFT_TEXT)
		return 0;

	/*
	 * Only consider those `Fd' macro fields that begin with an
	 * "inclusion" token (versus, e.g., #define).
	 */

	if (FUNC1("#include", n->string))
		return 0;

	if ((n = n->next) == NULL || n->type != ROFFT_TEXT)
		return 0;

	/*
	 * Strip away the enclosing angle brackets and make sure we're
	 * not zero-length.
	 */

	start = n->string;
	if ('<' == *start || '"' == *start)
		start++;

	if (0 == (sz = FUNC2(start)))
		return 0;

	end = &start[(int)sz - 1];
	if ('>' == *end || '"' == *end)
		end--;

	if (end > start)
		FUNC0(mpage, start, end - start + 1, TYPE_In);
	return 0;
}