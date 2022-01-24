#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfmt ;
typedef  int /*<<< orphan*/  va_list ;
typedef  scalar_t__ krb5_error_code ;
typedef  TYPE_1__* krb5_context ;
struct TYPE_6__ {scalar_t__ warn_dest; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 char* FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (char**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char const*) ; 

__attribute__((used)) static krb5_error_code
FUNC7(krb5_context context, int do_errtext,
	 krb5_error_code code, int level, const char *fmt, va_list ap)
{
    char xfmt[7] = "";
    const char *args[2], **arg;
    char *msg = NULL;
    const char *err_str = NULL;
    krb5_error_code ret;

    args[0] = args[1] = NULL;
    arg = args;
    if(fmt){
	FUNC4(xfmt, "%s", sizeof(xfmt));
	if(do_errtext)
	    FUNC4(xfmt, ": ", sizeof(xfmt));
	ret = FUNC5(&msg, fmt, ap);
	if(ret < 0 || msg == NULL)
	    return ENOMEM;
	*arg++ = msg;
    }
    if(context && do_errtext){
	FUNC4(xfmt, "%s", sizeof(xfmt));

	err_str = FUNC2(context, code);
	if (err_str != NULL) {
	    *arg = err_str;
	} else {
	    *arg= "<unknown error>";
	}
    }

    if(context && context->warn_dest)
	FUNC3(context, context->warn_dest, level, xfmt, args[0], args[1]);
    else
	FUNC6(xfmt, args[0], args[1]);
    FUNC0(msg);
    FUNC1(context, err_str);
    return 0;
}