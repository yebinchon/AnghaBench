#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct hx_expr {int op; struct hx_expr* arg2; struct hx_expr* arg1; } ;
typedef  TYPE_2__* hx509_env ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_7__ {char const* string; } ;
struct TYPE_8__ {char const* name; struct TYPE_8__* next; TYPE_1__ u; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  comp_EQ 131 
#define  comp_IN 130 
#define  comp_NE 129 
#define  comp_TAILEQ 128 
 int /*<<< orphan*/  env_string ; 
 char* FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,struct hx_expr*) ; 
 int const expr_VAR ; 
 int const expr_WORDS ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,struct hx_expr*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5(hx509_context context, hx509_env env, struct hx_expr *expr)
{
    switch (expr->op) {
    case comp_NE:
    case comp_EQ:
    case comp_TAILEQ: {
	const char *s1, *s2;
	int ret;

	s1 = FUNC1(context, env, expr->arg1);
	s2 = FUNC1(context, env, expr->arg2);

	if (s1 == NULL || s2 == NULL)
	    return FALSE;

	if (expr->op == comp_TAILEQ) {
	    size_t len1 = FUNC4(s1);
	    size_t len2 = FUNC4(s2);

	    if (len1 < len2)
		return 0;
	    ret = FUNC3(s1 + (len1 - len2), s2) == 0;
	} else {
	    ret = FUNC3(s1, s2) == 0;
	    if (expr->op == comp_NE)
		ret = !ret;
	}
	return ret;
    }
    case comp_IN: {
	struct hx_expr *subexpr;
	const char *w, *s1;

	w = FUNC1(context, env, expr->arg1);

	subexpr = expr->arg2;

	if (subexpr->op == expr_WORDS) {
	    while (subexpr) {
		s1 = FUNC1(context, env, subexpr->arg1);
		if (FUNC3(w, s1) == 0)
		    return TRUE;
		subexpr = subexpr->arg2;
	    }
	} else if (subexpr->op == expr_VAR) {
	    hx509_env subenv;

	    subenv = FUNC2(context, env, subexpr);
	    if (subenv == NULL)
		return FALSE;

	    while (subenv) {
		if (subenv->type != env_string)
		    continue;
		if (FUNC3(w, subenv->name) == 0)
		    return TRUE;
		if (FUNC3(w, subenv->u.string) == 0)
		    return TRUE;
		subenv = subenv->next;
	    }

	} else
	    FUNC0("hx509 eval IN unknown op: %d", (int)subexpr->op);

	return FALSE;
    }
    default:
	FUNC0("hx509 eval expr with unknown op: %d", (int)expr->op);
    }
    return FALSE;
}