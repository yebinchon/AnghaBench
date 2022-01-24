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
typedef  int /*<<< orphan*/  krb5_log_facility ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_AUTH ; 
 int LOG_ODELAY ; 
 int LOG_PID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  context ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  krb5_tkfile ; 
 int /*<<< orphan*/ * regpag_str ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,char**) ; 
 int /*<<< orphan*/  service ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int
FUNC9(int argc, char **argv)
{
    int port;
    int ret;
    krb5_log_facility *fac;

    FUNC8 (argv[0]);
    FUNC6 (argv[0], LOG_ODELAY | LOG_PID,LOG_AUTH);
    port = FUNC7(&context, argc, argv);
    ret = FUNC4(context, "kfd", &fac);
    if(ret) FUNC3(context, 1, ret, "krb5_openlog");
    ret = FUNC5(context, fac);
    if(ret) FUNC3(context, 1, ret, "krb5_set_warn_dest");

    ret = FUNC1 (port, service);
    FUNC0();
    if (ret == 0 && regpag_str != NULL)
        ret = FUNC2(regpag_str, "regpag", "-t", krb5_tkfile, "-r", NULL);
    return ret;
}