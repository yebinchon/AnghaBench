#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_5__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

__attribute__((used)) static void
FUNC12(krb5_context context)
{
    krb5_error_code ret;
    krb5_principal p;
    krb5_ccache id;
    unsigned int i;

    ret = FUNC3(context, "MEMORY", "bar", &id);
    if (ret)
	FUNC6(context, 1, ret, "krb5_cc_new_unique");

    ret = FUNC9(context, "lha@SU.SE", &p);
    if (ret)
	FUNC6(context, 1, ret, "krb5_parse_name");

    ret = FUNC2(context, id, p);
    if (ret)
	FUNC6(context, 1, ret, "krb5_cc_initialize");

    for (i = 0; i < 1000; i++) {
	krb5_data data, data2;
	const char *name = "foo";
	krb5_principal p1 = NULL;

	if (i & 1)
	    p1 = p;

	data.data = FUNC10(name);
	data.length = FUNC11(name);

	ret = FUNC4(context, id, p1, "FriendlyName", &data);
	if (ret)
	    FUNC7(context, 1, "krb5_cc_set_config: add");

	ret = FUNC1(context, id, p1, "FriendlyName", &data2);
	if (ret)
	    FUNC7(context, 1, "krb5_cc_get_config: first");
	FUNC5(&data2);

	ret = FUNC4(context, id, p1, "FriendlyName", &data);
	if (ret)
	    FUNC7(context, 1, "krb5_cc_set_config: add -second");

	ret = FUNC1(context, id, p1, "FriendlyName", &data2);
	if (ret)
	    FUNC7(context, 1, "krb5_cc_get_config: second");
	FUNC5(&data2);

	ret = FUNC4(context, id, p1, "FriendlyName", NULL);
	if (ret)
	    FUNC7(context, 1, "krb5_cc_set_config: delete");

	ret = FUNC1(context, id, p1, "FriendlyName", &data2);
	if (ret == 0)
	    FUNC7(context, 1, "krb5_cc_get_config: non-existant");
    }

    FUNC0(context, id);
    FUNC8(context, p);
}