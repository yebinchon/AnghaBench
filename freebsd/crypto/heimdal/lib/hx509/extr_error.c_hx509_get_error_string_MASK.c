#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rk_strpool {int dummy; } ;
typedef  TYPE_1__* hx509_error ;
typedef  TYPE_2__* hx509_context ;
struct TYPE_5__ {TYPE_1__* error; int /*<<< orphan*/  et_list; } ;
struct TYPE_4__ {int code; struct TYPE_4__* next; int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 int FUNC0 (char**,char*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (struct rk_strpool*) ; 
 struct rk_strpool* FUNC3 (struct rk_strpool*,char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (int) ; 

char *
FUNC6(hx509_context context, int error_code)
{
    struct rk_strpool *p = NULL;
    hx509_error msg = context->error;

    if (msg == NULL || msg->code != error_code) {
	const char *cstr;
	char *str;

	cstr = FUNC1(context->et_list, error_code);
	if (cstr)
	    return FUNC4(cstr);
	cstr = FUNC5(error_code);
	if (cstr)
	    return FUNC4(cstr);
	if (FUNC0(&str, "<unknown error: %d>", error_code) == -1)
	    return NULL;
	return str;
    }

    for (msg = context->error; msg; msg = msg->next)
	p = FUNC3(p, "%s%s", msg->msg,
			     msg->next != NULL ? "; " : "");

    return FUNC2(p);
}