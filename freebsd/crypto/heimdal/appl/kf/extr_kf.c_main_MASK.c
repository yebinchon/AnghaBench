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
typedef  int /*<<< orphan*/  message ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int*,char**) ; 
 int /*<<< orphan*/  context ; 
 int FUNC1 (char*,int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * remote_name ; 
 int /*<<< orphan*/  service ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 

int
FUNC5(int argc, char **argv)
{
    int argcc,port,i;
    int ret=0;

    argcc = argc;
    port = FUNC0(&context, &argcc, argv);

    if (remote_name == NULL) {
	remote_name = FUNC3 ();
	if (remote_name == NULL)
	    FUNC2 (1, "who are you?");
    }

    for (i = argcc;i < argc; i++) {
	char message[128];
	ret = FUNC1 (argv[i], port, service, message, sizeof(message));
	if(ret == 0)
	    FUNC4 ("%s: ok", argv[i]);
	else
	    FUNC4 ("%s: failed: %s", argv[i], message);
    }
    return(ret);
}