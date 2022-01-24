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
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
#define  CAT 132 
 int FINAL ; 
#define  OR 131 
#define  PLUS 130 
#define  QUEST 129 
#define  STAR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(Node *v)	/* collects leaves that can follow v into setvec */
{
	Node *p;

	if (FUNC4(v) == FINAL)
		return;
	p = FUNC2(v);
	switch (FUNC4(p)) {
	case STAR:
	case PLUS:
		FUNC0(v);
		FUNC5(p);
		return;

	case OR:
	case QUEST:
		FUNC5(p);
		return;

	case CAT:
		if (v == FUNC1(p)) {	/* v is left child of p */
			if (FUNC0(FUNC3(p)) == 0) {
				FUNC5(p);
				return;
			}
		} else		/* v is right child */
			FUNC5(p);
		return;
	}
}