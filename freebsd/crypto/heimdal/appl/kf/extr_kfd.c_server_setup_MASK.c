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
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ help_flag ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int,int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  num_args ; 
 char* port_str ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct servent* FUNC6 (char*,char*) ; 
 int FUNC7 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ version_flag ; 

__attribute__((used)) static int
FUNC10(krb5_context *context, int argc, char **argv)
{
    int port = 0;
    int local_argc;

    local_argc = FUNC4(context, argc, argv, args, num_args, usage);

    if(help_flag)
	FUNC9)(0, args, num_args);
    if(version_flag) {
	FUNC5(NULL);
	FUNC1(0);
    }

    if(port_str){
	struct servent *s = FUNC6(port_str, "tcp");
	if(s)
	    port = s->s_port;
	else {
	    char *ptr;

	    port = FUNC7 (port_str, &ptr, 10);
	    if (port == 0 && ptr == port_str)
		FUNC0 (1, "Bad port `%s'", port_str);
	    port = FUNC2(port);
	}
    }

    if (port == 0)
	port = FUNC3 (*context, KF_PORT_NAME, "tcp", KF_PORT_NUM);

    if(argv[local_argc] != NULL)
        FUNC9(1, args, num_args);

    return port;
}