#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_9__ {scalar_t__ len; int /*<<< orphan*/ * val; } ;
typedef  TYPE_1__ krb5_addresses ;

/* Variables and functions */
 int EXTRA_ADDRESSES ; 
 int SCAN_INTERFACES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static krb5_error_code
FUNC6 (krb5_context context, krb5_addresses *res, int flags)
{
    krb5_error_code ret = -1;

    res->len = 0;
    res->val = NULL;

    if (flags & SCAN_INTERFACES) {
	ret = FUNC0 (context, res, flags);
	if(ret || res->len == 0)
	    ret = FUNC2 (context, res);
    } else {
	ret = 0;
    }

    if(ret == 0 && (flags & EXTRA_ADDRESSES)) {
	krb5_addresses a;
	/* append user specified addresses */
	ret = FUNC5(context, &a);
	if(ret) {
	    FUNC4(context, res);
	    return ret;
	}
	ret = FUNC3(context, res, &a);
	if(ret) {
	    FUNC4(context, res);
	    return ret;
	}
	FUNC4(context, &a);
    }
    if(res->len == 0) {
	FUNC1(res->val);
	res->val = NULL;
    }
    return ret;
}