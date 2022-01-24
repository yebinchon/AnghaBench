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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 scalar_t__ FUNC3 (char***) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *,char***) ; 
 scalar_t__ FUNC5 (char*,char***) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static int
FUNC7(krb5_context context, char *filelist, char **res, int def)
{
    krb5_error_code ret;
    char **pp;
    int i;

    pp = NULL;

    if (def)
	ret = FUNC5(filelist, &pp);
    else
	ret = FUNC4(filelist, NULL, &pp);

    if (ret)
	FUNC0(context, 1, ret, "prepend_config_files");

    for (i = 0; res[i] && pp[i]; i++)
	if (FUNC6(pp[i], res[i]) != 0)
	    FUNC1(context, 1, "'%s' != '%s'", pp[i], res[i]);

    if (res[i] != NULL)
	FUNC1(context, 1, "pp ended before res list");

    if (def) {
	char **deflist;
	int j;

	ret = FUNC3(&deflist);
	if (ret)
	    FUNC0(context, 1, ret, "get_default_config_files");

	for (j = 0 ; pp[i] && deflist[j]; i++, j++)
	    if (FUNC6(pp[i], deflist[j]) != 0)
		FUNC1(context, 1, "'%s' != '%s'", pp[i], deflist[j]);

	if (deflist[j] != NULL)
	    FUNC1(context, 1, "pp ended before def list");
	FUNC2(deflist);
    }

    if (pp[i] != NULL)
	FUNC1(context, 1, "pp ended after res (and def) list");

    FUNC2(pp);

    return 0;
}