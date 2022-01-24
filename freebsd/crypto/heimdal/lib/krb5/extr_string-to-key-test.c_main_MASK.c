#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct testcase {char* principal_name; char* password; int* res; int /*<<< orphan*/  enctype; } ;
typedef  int /*<<< orphan*/  krb5_principal ;
struct TYPE_5__ {unsigned char* data; int length; } ;
struct TYPE_6__ {TYPE_1__ keyvalue; } ;
typedef  TYPE_2__ krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC9 (unsigned char*,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 struct testcase* tests ; 

int
FUNC11(int argc, char **argv)
{
    struct testcase *t;
    krb5_context context;
    krb5_error_code ret;
    int val = 0;

    ret = FUNC5 (&context);
    if (ret)
	FUNC0 (1, "krb5_init_context failed: %d", ret);

    /* to enable realm-less principal name above */

    FUNC7(context, "");

    for (t = tests; t->principal_name; ++t) {
	krb5_keyblock key;
	krb5_principal principal;
	int i;

	ret = FUNC6 (context, t->principal_name, &principal);
	if (ret)
	    FUNC1 (context, 1, ret, "krb5_parse_name %s",
		      t->principal_name);
	ret = FUNC8 (context, t->enctype, t->password,
				  principal, &key);
	if (ret)
	    FUNC1 (context, 1, ret, "krb5_string_to_key");
	FUNC4 (context, principal);
	if (FUNC9 (key.keyvalue.data, t->res, key.keyvalue.length) != 0) {
	    const unsigned char *p = key.keyvalue.data;

	    FUNC10 ("string_to_key(%s, %s) failed\n",
		    t->principal_name, t->password);
	    FUNC10 ("should be: ");
	    for (i = 0; i < key.keyvalue.length; ++i)
		FUNC10 ("%02x", t->res[i]);
	    FUNC10 ("\nresult was: ");
	    for (i = 0; i < key.keyvalue.length; ++i)
		FUNC10 ("%02x", p[i]);
	    FUNC10 ("\n");
	    val = 1;
	}
	FUNC3(context, &key);
    }
    FUNC2(context);
    return val;
}