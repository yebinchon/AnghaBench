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
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,unsigned long) ; 

krb5_error_code
FUNC5(krb5_context context, const char *func, unsigned long argn)
{
#ifndef HEIMDAL_SMALLER
    FUNC4(context, EINVAL,
			   FUNC0("programmer error: invalid argument to %s argument %lu",
			      "function:line"),
			   func, argn);
    if (FUNC3(context, 10)) {
	FUNC1(context, 10, "invalid argument to function %s argument %lu",
		    func, argn);
	FUNC2(context);
    }
#endif
    return EINVAL;
}