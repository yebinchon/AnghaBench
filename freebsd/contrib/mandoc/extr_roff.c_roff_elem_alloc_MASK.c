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
struct roff_node {int dummy; } ;
struct roff_man {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  ROFFT_ELEM ; 
 int /*<<< orphan*/  ROFF_NEXT_CHILD ; 
 struct roff_node* FUNC0 (struct roff_man*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct roff_man*,struct roff_node*) ; 

void
FUNC2(struct roff_man *man, int line, int pos, int tok)
{
	struct roff_node	*n;

	n = FUNC0(man, line, pos, ROFFT_ELEM, tok);
	FUNC1(man, n);
	man->next = ROFF_NEXT_CHILD;
}