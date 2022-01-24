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
struct expr {struct expr* child; struct expr* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct expr*) ; 

__attribute__((used)) static void
FUNC1(struct expr *e)
{
	if (e->next != NULL)
		FUNC1(e->next);
	if (e->child != NULL)
		FUNC1(e->child);
	FUNC0(e);
}