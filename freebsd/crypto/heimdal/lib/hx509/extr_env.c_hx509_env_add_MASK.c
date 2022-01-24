#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* hx509_env ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_6__ {int /*<<< orphan*/ * string; } ;
struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__* name; TYPE_1__ u; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  env_string ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 TYPE_2__* FUNC2 (int) ; 
 void* FUNC3 (char const*) ; 

int
FUNC4(hx509_context context, hx509_env *env,
	      const char *key, const char *value)
{
    hx509_env n;

    n = FUNC2(sizeof(*n));
    if (n == NULL) {
	FUNC1(context, 0, ENOMEM, "out of memory");
	return ENOMEM;
    }

    n->type = env_string;
    n->next = NULL;
    n->name = FUNC3(key);
    if (n->name == NULL) {
	FUNC0(n);
	return ENOMEM;
    }
    n->u.string = FUNC3(value);
    if (n->u.string == NULL) {
	FUNC0(n->name);
	FUNC0(n);
	return ENOMEM;
    }

    /* add to tail */
    if (*env) {
	hx509_env e = *env;
	while (e->next)
	    e = e->next;
	e->next = n;
    } else
	*env = n;

    return 0;
}