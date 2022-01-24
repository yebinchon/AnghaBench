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
typedef  int /*<<< orphan*/ * krb5_keytab ;
typedef  scalar_t__ krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/  context ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 

int
FUNC3 (void *opt, int argc, char **argv)
{
    krb5_error_code ret;
    krb5_keytab keytab;

    if((keytab = FUNC2()) == NULL)
	return 1;

    ret = FUNC0 (context, keytab);
    if (ret) {
	FUNC1 (context, ret, "destroy keytab failed");
	return 1;
    }

    return 0;
}