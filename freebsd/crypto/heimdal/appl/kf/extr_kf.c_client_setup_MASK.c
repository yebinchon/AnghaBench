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
struct servent {int s_port; } ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  KF_PORT_NAME ; 
 int /*<<< orphan*/  KF_PORT_NUM ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  forwardable ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 scalar_t__ help_flag ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_args ; 
 char* port_str ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct servent* FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ version_flag ; 

__attribute__((used)) static int
FUNC12(krb5_context *context, int *argc, char **argv)
{
    int optind = 0;
    int port = 0;
    int status;

    FUNC9 (argv[0]);

    status = FUNC6 (context);
    if (status)
	FUNC0(1, "krb5_init_context failed: %d", status);

    forwardable = FUNC4 (*context, NULL,
					"libdefaults",
					"forwardable",
					NULL);

    if (FUNC2 (args, num_args, *argc, argv, &optind))
	FUNC11(1, args, num_args);

    if(help_flag)
	FUNC11 (0, args, num_args);
    if(version_flag) {
	FUNC7(NULL);
	FUNC1(0);
    }

    if(port_str) {
	struct servent *s = FUNC8(port_str, "tcp");
	if(s)
	    port = s->s_port;
	else {
	    char *ptr;

	    port = FUNC10 (port_str, &ptr, 10);
	    if (port == 0 && ptr == port_str)
		FUNC0 (1, "Bad port `%s'", port_str);
	    port = FUNC3(port);
	}
    }

    if (port == 0)
	port = FUNC5 (*context, KF_PORT_NAME, "tcp", KF_PORT_NUM);

    if(*argc - optind < 1)
        FUNC11(1, args, num_args);
    *argc = optind;

    return port;
}