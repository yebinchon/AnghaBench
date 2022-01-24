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
struct varent {int const* v_name; int v_flags; int** vec; struct varent* v_parent; scalar_t__ v_right; scalar_t__ v_left; scalar_t__ v_bal; struct varent** v_link; } ;
typedef  int Char ;

/* Variables and functions */
 int ERR_NAME ; 
 int ERR_READONLY ; 
 int FUNC0 (int const*,int const*) ; 
 int const* FUNC1 (int const*) ; 
 int VAR_READONLY ; 
 int /*<<< orphan*/  FUNC2 (struct varent*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int**) ; 
 int /*<<< orphan*/  FUNC4 (int,int const*) ; 
 int /*<<< orphan*/  FUNC5 (int**) ; 
 struct varent* FUNC6 (int) ; 

void
FUNC7(const Char *name, Char **vec, struct varent *p, int flags)
{
    struct varent *c;
    int f;

    f = 0;			/* tree hangs off the header's left link */
    while ((c = p->v_link[f]) != 0) {
	if ((f = *name - *c->v_name) == 0 &&
	    (f = FUNC0(name, c->v_name)) == 0) {
	    if (c->v_flags & VAR_READONLY)
		FUNC4(ERR_READONLY|ERR_NAME, c->v_name);
	    FUNC3(c->vec);
	    c->v_flags = flags;
	    FUNC5(c->vec = vec);
	    return;
	}
	p = c;
	f = f > 0;
    }
    p->v_link[f] = c = FUNC6(sizeof(struct varent));
    c->v_name = FUNC1(name);
    c->v_flags = flags;
    c->v_bal = 0;
    c->v_left = c->v_right = 0;
    c->v_parent = p;
    FUNC2(p, f, 0);
    FUNC5(c->vec = vec);
}