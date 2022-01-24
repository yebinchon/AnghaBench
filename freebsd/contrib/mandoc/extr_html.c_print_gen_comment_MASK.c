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
struct roff_node {scalar_t__ type; char* string; struct roff_node* next; } ;
struct html {int indent; } ;

/* Variables and functions */
 scalar_t__ ROFFT_COMMENT ; 
 int /*<<< orphan*/  FUNC0 (struct html*) ; 
 int /*<<< orphan*/  FUNC1 (struct html*) ; 
 int /*<<< orphan*/  FUNC2 (struct html*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 

void
FUNC4(struct html *h, struct roff_node *n)
{
	int	 wantblank;

	FUNC2(h, "<!-- This is an automatically generated file."
	    "  Do not edit.");
	h->indent = 1;
	wantblank = 0;
	while (n != NULL && n->type == ROFFT_COMMENT) {
		if (FUNC3(n->string, "-->") == NULL &&
		    (wantblank || *n->string != '\0')) {
			FUNC0(h);
			FUNC1(h);
			FUNC2(h, n->string);
			wantblank = *n->string != '\0';
		}
		n = n->next;
	}
	if (wantblank)
		FUNC0(h);
	FUNC2(h, " -->");
	FUNC0(h);
	h->indent = 0;
}