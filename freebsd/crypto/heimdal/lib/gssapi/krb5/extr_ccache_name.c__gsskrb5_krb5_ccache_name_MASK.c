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
typedef  int /*<<< orphan*/  krb5_context ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 char* last_out_name ; 
 char* FUNC4 (char const*) ; 

OM_uint32
FUNC5(OM_uint32 *minor_status,
			  const char *name,
			  const char **out_name)
{
    krb5_context context;
    krb5_error_code kret;

    *minor_status = 0;

    FUNC0(&context);

    if (out_name) {
	const char *n;

	if (last_out_name) {
	    FUNC1(last_out_name);
	    last_out_name = NULL;
	}

	n = FUNC2(context);
	if (n == NULL) {
	    *minor_status = ENOMEM;
	    return GSS_S_FAILURE;
	}
	last_out_name = FUNC4(n);
	if (last_out_name == NULL) {
	    *minor_status = ENOMEM;
	    return GSS_S_FAILURE;
	}
	*out_name = last_out_name;
    }

    kret = FUNC3(context, name);
    if (kret) {
	*minor_status = kret;
	return GSS_S_FAILURE;
    }
    return GSS_S_COMPLETE;
}