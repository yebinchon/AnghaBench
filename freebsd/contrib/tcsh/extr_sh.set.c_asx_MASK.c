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
struct varent {int v_flags; int /*<<< orphan*/ ** vec; int /*<<< orphan*/  v_name; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int ERR_NAME ; 
 int ERR_READONLY ; 
 int /*<<< orphan*/  G_APPEND ; 
 int VAR_READONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct varent* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfree ; 

__attribute__((used)) static void
FUNC5(Char *vp, int subscr, Char *p)
{
    struct varent *v = FUNC2(vp, subscr);
    Char *prev;

    if (v->v_flags & VAR_READONLY)
	FUNC4(ERR_READONLY|ERR_NAME, v->v_name);
    prev = v->vec[subscr - 1];
    FUNC0(prev, xfree);
    v->vec[subscr - 1] = FUNC3(p, G_APPEND);
    FUNC1(prev);
}