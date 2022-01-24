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
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/ * krb5_const_principal ;
typedef  scalar_t__ krb5_boolean ;
struct TYPE_4__ {int /*<<< orphan*/  acl_file; } ;
struct TYPE_5__ {int /*<<< orphan*/  context; int /*<<< orphan*/  caller; TYPE_1__ config; } ;
typedef  TYPE_2__ kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char*,char**) ; 

__attribute__((used)) static kadm5_ret_t
FUNC9 (kadm5_server_context *context,
	   krb5_const_principal princ,
	   unsigned *ret_flags)
{
    FILE *f;
    krb5_error_code ret = 0;
    char buf[256];

    *ret_flags = 0;

    /* no acl file -> no rights */
    f = FUNC3(context->config.acl_file, "r");
    if (f == NULL)
	return 0;

    while(FUNC2(buf, sizeof(buf), f) != NULL) {
	char *foo = NULL, *p;
	krb5_principal this_princ;
	unsigned flags = 0;

	p = FUNC8(buf, " \t\n", &foo);
	if(p == NULL)
	    continue;
	if (*p == '#')		/* comment */
	    continue;
	ret = FUNC5(context->context, p, &this_princ);
	if(ret)
	    break;
	if(!FUNC6(context->context,
				   context->caller, this_princ)) {
	    FUNC4(context->context, this_princ);
	    continue;
	}
	FUNC4(context->context, this_princ);
	p = FUNC8(NULL, " \t\n", &foo);
	if(p == NULL)
	    continue;
	ret = FUNC0(p, &flags);
	if (ret)
	    break;
	p = FUNC8(NULL, " \t\n", &foo);
	if (p == NULL) {
	    *ret_flags = flags;
	    break;
	}
	if (princ != NULL) {
	    krb5_principal pattern_princ;
	    krb5_boolean match;

	    ret = FUNC5 (context->context, p, &pattern_princ);
	    if (ret)
		break;
	    match = FUNC7 (context->context,
					  princ, pattern_princ);
	    FUNC4 (context->context, pattern_princ);
	    if (match) {
		*ret_flags = flags;
		break;
	    }
	}
    }
    FUNC1(f);
    return ret;
}