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
typedef  int /*<<< orphan*/ * krb5_realm ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 

__attribute__((used)) static krb5_error_code
FUNC5 (krb5_context context, const char *s, krb5_realm **list)
{

    *list = FUNC3 (2 * sizeof(**list));
    if (*list == NULL) {
	FUNC2(context, ENOMEM,
			       FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }
    (*list)[0] = FUNC4 (s);
    if ((*list)[0] == NULL) {
	FUNC1 (*list);
	FUNC2(context, ENOMEM,
			       FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }
    (*list)[1] = NULL;
    return 0;
}