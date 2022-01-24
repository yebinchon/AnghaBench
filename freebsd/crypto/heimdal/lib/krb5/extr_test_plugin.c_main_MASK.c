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
typedef  int /*<<< orphan*/  krb5_krbhst_handle ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  host ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_KRBHST_KDC ; 
 int /*<<< orphan*/  KRB5_PLUGIN_LOCATE ; 
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  PLUGIN_TYPE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  resolve ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char*) ; 

int
FUNC11(int argc, char **argv)
{
    krb5_error_code ret;
    krb5_context context;
    krb5_krbhst_handle handle;
    char host[MAXHOSTNAMELEN];
    int found = 0;

    FUNC9(argv[0]);

    ret = FUNC4(&context);
    if (ret)
	FUNC0(1, "krb5_init_contex");

    ret = FUNC8(context, PLUGIN_TYPE_DATA,
			       KRB5_PLUGIN_LOCATE, &resolve);
    if (ret)
	FUNC1(context, 1, ret, "krb5_plugin_register");


    ret = FUNC6(context,
				 "NOTHERE.H5L.SE",
				 KRB5_KRBHST_KDC,
				 0,
				 &handle);
    if (ret)
	FUNC1(context, 1, ret, "krb5_krbhst_init_flags");


    while(FUNC7(context, handle, host, sizeof(host)) == 0){
	found++;
 	if (FUNC10(host, "127.0.0.2") != 0)
	    FUNC2(context, 1, "wrong address: %s", host);
    }
    if (!found)
	FUNC2(context, 1, "failed to find host");

    FUNC5(context, handle);

    FUNC3(context);
    return 0;
}