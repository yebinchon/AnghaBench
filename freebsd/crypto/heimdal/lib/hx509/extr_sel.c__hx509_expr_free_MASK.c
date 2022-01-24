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
struct hx_expr {int op; struct hx_expr* arg2; struct hx_expr* arg1; } ;

/* Variables and functions */
#define  expr_FUNCTION 132 
#define  expr_NUMBER 131 
#define  expr_STRING 130 
#define  expr_VAR 129 
#define  expr_WORDS 128 
 int /*<<< orphan*/  FUNC0 (struct hx_expr*) ; 

void
FUNC1(struct hx_expr *expr)
{
    switch (expr->op) {
    case expr_STRING:
    case expr_NUMBER:
	FUNC0(expr->arg1);
	break;
    case expr_WORDS:
    case expr_FUNCTION:
    case expr_VAR:
	FUNC0(expr->arg1);
	if (expr->arg2)
	    FUNC1(expr->arg2);
	break;
    default:
	if (expr->arg1)
	    FUNC1(expr->arg1);
	if (expr->arg2)
	    FUNC1(expr->arg2);
	break;
    }
    FUNC0(expr);
}