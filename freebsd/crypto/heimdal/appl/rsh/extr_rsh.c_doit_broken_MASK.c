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
struct addrinfo {int /*<<< orphan*/  ai_addr; struct addrinfo* ai_next; int /*<<< orphan*/  ai_addrlen; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_RSH ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char** FUNC9 (int) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int,int,char*,char const*,char const*,char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  send_broken_auth ; 
 scalar_t__ FUNC12 (scalar_t__,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

__attribute__((used)) static int
FUNC14 (int argc,
	     char **argv,
	     int hostindex,
	     struct addrinfo *ai,
	     const char *remote_user,
	     const char *local_user,
	     int priv_socket1,
	     int priv_socket2,
	     const char *cmd,
	     size_t cmd_len)
{
    struct addrinfo *a;

    if (FUNC3 (priv_socket1, ai->ai_addr, ai->ai_addrlen) < 0) {
	int save_errno = errno;

	FUNC2(priv_socket1);
	FUNC2(priv_socket2);

	for (a = ai->ai_next; a != NULL; a = a->ai_next) {
	    pid_t pid;
	    char *adr = FUNC10(a->ai_addr);
	    if(adr == NULL)
		continue;

	    pid = FUNC7();
	    if (pid < 0)
		FUNC4 (1, "fork");
	    else if(pid == 0) {
		char **new_argv;
		int i = 0;

		new_argv = FUNC9((argc + 2) * sizeof(*new_argv));
		if (new_argv == NULL)
		    FUNC5 (1, "malloc: out of memory");
		new_argv[i] = argv[i];
		++i;
		if (hostindex == i)
		    new_argv[i++] = adr;
		new_argv[i++] = "-K";
		for(; i <= argc; ++i)
		    new_argv[i] = argv[i - 1];
		if (hostindex > 1)
		    new_argv[hostindex + 1] = adr;
		new_argv[argc + 1] = NULL;
		FUNC6(PATH_RSH, new_argv);
		FUNC4(1, "execv(%s)", PATH_RSH);
	    } else {
		int status;
		FUNC8(adr);

		while(FUNC12(pid, &status, 0) < 0)
		    ;
		if(FUNC1(status) && FUNC0(status) == 0)
		    return 0;
	    }
	}
	errno = save_errno;
	FUNC13("%s", argv[hostindex]);
	return 1;
    } else {
	int ret;

	ret = FUNC11 (priv_socket1, priv_socket2,
		     argv[hostindex],
		     local_user, remote_user,
		     cmd, cmd_len,
		     send_broken_auth);
	return ret;
    }
}