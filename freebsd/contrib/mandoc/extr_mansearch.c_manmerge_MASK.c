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
struct ohash {int dummy; } ;
struct expr {int type; int /*<<< orphan*/  child; } ;

/* Variables and functions */
#define  EXPR_AND 130 
#define  EXPR_OR 129 
#define  EXPR_TERM 128 
 int /*<<< orphan*/  FUNC0 () ; 
 struct ohash* FUNC1 (int /*<<< orphan*/ ,struct ohash*) ; 
 struct ohash* FUNC2 (int /*<<< orphan*/ ,struct ohash*) ; 
 struct ohash* FUNC3 (struct expr*,struct ohash*) ; 

__attribute__((used)) static struct ohash *
FUNC4(struct expr *e, struct ohash *htab)
{
	switch (e->type) {
	case EXPR_TERM:
		return FUNC3(e, htab);
	case EXPR_OR:
		return FUNC2(e->child, htab);
	case EXPR_AND:
		return FUNC1(e->child, htab);
	default:
		FUNC0();
	}
}