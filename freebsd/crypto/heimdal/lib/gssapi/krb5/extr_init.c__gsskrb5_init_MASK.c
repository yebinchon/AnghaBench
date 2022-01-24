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
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/ * krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  context_key ; 
 int /*<<< orphan*/  context_mutex ; 
 int created_key ; 
 int /*<<< orphan*/  destroy_context ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **) ; 

krb5_error_code
FUNC7 (krb5_context *context)
{
    krb5_error_code ret = 0;

    FUNC0(&context_mutex);

    if (!created_key) {
	FUNC3(&context_key, destroy_context, ret);
	if (ret) {
	    FUNC1(&context_mutex);
	    return ret;
	}
	created_key = 1;
    }
    FUNC1(&context_mutex);

    *context = FUNC2(context_key);
    if (*context == NULL) {

	ret = FUNC6(context);
	if (ret == 0) {
	    FUNC4(context_key, *context, ret);
	    if (ret) {
		FUNC5(*context);
		*context = NULL;
	    }
	}
    }

    return ret;
}