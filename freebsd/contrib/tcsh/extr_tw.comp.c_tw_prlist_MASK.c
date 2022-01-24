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
struct varent {struct varent* v_parent; struct varent* v_right; scalar_t__ vec; int /*<<< orphan*/  v_name; struct varent* v_left; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ setintr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 

__attribute__((used)) static void
FUNC6(struct varent *p)
{
    struct varent *c;

    for (;;) {
	while (p->v_left)
	    p = p->v_left;
x:
	if (p->v_parent == 0)	/* is it the header? */
	    break;
	if (setintr) {
	    int old_pintr_disabled;

	    FUNC1(&old_pintr_disabled);
	    FUNC0(&old_pintr_disabled);
	}
	FUNC4("%s\t", FUNC2(p->v_name));
	if (p->vec)
	    FUNC3(p->vec);
	FUNC5('\n');
	if (p->v_right) {
	    p = p->v_right;
	    continue;
	}
	do {
	    c = p;
	    p = p->v_parent;
	} while (p->v_right == c);
	goto x;
    }
}