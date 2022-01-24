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
struct hx_expr {scalar_t__ op; struct hx_expr* arg2; int /*<<< orphan*/  arg1; } ;
typedef  int /*<<< orphan*/ * hx509_env ;
typedef  int /*<<< orphan*/  hx509_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ expr_VAR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static hx509_env
FUNC2(hx509_context context, hx509_env env, struct hx_expr *word)
{
    FUNC0(word->op == expr_VAR);

    if (word->arg2 == NULL)
	return FUNC1(context, env, word->arg1);

    env = FUNC1(context, env, word->arg1);
    if (env == NULL)
	return NULL;
    return FUNC2(context, env, word->arg2);
}