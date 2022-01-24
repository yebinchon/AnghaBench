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
typedef  int /*<<< orphan*/  krb5_enctype ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ETYPE_NULL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char** FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 

__attribute__((used)) static krb5_error_code
FUNC7 (krb5_context context,
	    const char *name,
	    krb5_enctype **ret_enctypes)
{
    char **etypes_str;
    krb5_enctype *etypes = NULL;

    etypes_str = FUNC2(context, NULL, "libdefaults",
					 name, NULL);
    if(etypes_str){
	int i, j, k;
	for(i = 0; etypes_str[i]; i++);
	etypes = FUNC6((i+1) * sizeof(*etypes));
	if (etypes == NULL) {
	    FUNC1 (etypes_str);
	    FUNC4 (context, ENOMEM, FUNC0("malloc: out of memory", ""));
	    return ENOMEM;
	}
	for(j = 0, k = 0; j < i; j++) {
	    krb5_enctype e;
	    if(FUNC5(context, etypes_str[j], &e) != 0)
		continue;
	    if (FUNC3(context, e) != 0)
		continue;
	    etypes[k++] = e;
	}
	etypes[k] = ETYPE_NULL;
	FUNC1(etypes_str);
    }
    *ret_enctypes = etypes;
    return 0;
}