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
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * _gsskrb5_keytab ; 
 scalar_t__ FUNC3 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  gssapi_keytab_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **) ; 

OM_uint32
FUNC8(OM_uint32 *min_stat, const char *identity)
{
    krb5_context context;
    krb5_error_code ret;

    *min_stat = 0;

    ret = FUNC2(&context);
    if(ret)
	return GSS_S_FAILURE;

    FUNC0(&gssapi_keytab_mutex);

    if(_gsskrb5_keytab != NULL) {
	FUNC5(context, _gsskrb5_keytab);
	_gsskrb5_keytab = NULL;
    }
    if (identity == NULL) {
	ret = FUNC6(context, &_gsskrb5_keytab);
    } else {
	/*
	 * First check if we can the keytab as is and if it has content...
	 */
	ret = FUNC7(context, identity, &_gsskrb5_keytab);
	/*
	 * if it doesn't, lets prepend FILE: and try again
	 */
	if (ret) {
	    char *p = NULL;
	    ret = FUNC3(&p, "FILE:%s", identity);
	    if(ret < 0 || p == NULL) {
		FUNC1(&gssapi_keytab_mutex);
		return GSS_S_FAILURE;
	    }
	    ret = FUNC7(context, p, &_gsskrb5_keytab);
	    FUNC4(p);
	}
    }
    FUNC1(&gssapi_keytab_mutex);
    if(ret) {
	*min_stat = ret;
	return GSS_S_FAILURE;
    }
    return GSS_S_COMPLETE;
}