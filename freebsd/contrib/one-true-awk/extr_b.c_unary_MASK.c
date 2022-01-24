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
 int /*<<< orphan*/  NIL ; 
#define  PLUS 130 
#define  QUEST 129 
#define  STAR 128 
 int /*<<< orphan*/ * FUNC0 (int const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int rtok ; 

Node *FUNC2(Node *np)
{
	switch (rtok) {
	case STAR:
		rtok = FUNC1();
		return (FUNC2(FUNC0(STAR, np, NIL)));
	case PLUS:
		rtok = FUNC1();
		return (FUNC2(FUNC0(PLUS, np, NIL)));
	case QUEST:
		rtok = FUNC1();
		return (FUNC2(FUNC0(QUEST, np, NIL)));
	default:
		return (np);
	}
}