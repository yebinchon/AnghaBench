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
#define  ALL 133 
 int const CAT ; 
#define  CCL 132 
#define  CHAR 131 
#define  DOT 130 
#define  EMPTYRE 129 
#define  NCCL 128 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC0 (int const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 () ; 
 int rtok ; 
 scalar_t__ FUNC3 (char*) ; 

Node *FUNC4(Node *np)
{
	switch (rtok) {
	case CHAR: case DOT: case ALL: case CCL: case NCCL: case '$': case '(':
		return (FUNC4(FUNC0(CAT, np, FUNC1())));
	case EMPTYRE:
		rtok = FUNC2();
		return (FUNC4(FUNC0(CAT, FUNC0(CCL, NIL, (Node *) FUNC3("")),
				FUNC1())));
	}
	return (np);
}