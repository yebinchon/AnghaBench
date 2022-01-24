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
struct sigaction {void* sa_handler; int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; } ;
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  heim_sipc ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 void* SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ detach_from_console ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char**) ; 
 int /*<<< orphan*/  kcm_context ; 
 int /*<<< orphan*/  kcm_service ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ launchd_flag ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  service_name ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,void*) ; 
 void* sigterm ; 
 void* sigusr1 ; 
 void* sigusr2 ; 

int
FUNC13(int argc, char **argv)
{
    krb5_error_code ret;
    FUNC9(argv[0]);

    ret = FUNC7(&kcm_context);
    if (ret) {
	FUNC1 (1, "krb5_init_context failed: %d", ret);
	return ret;
    }

    FUNC5(argc, argv);

#ifdef HAVE_SIGACTION
    {
	struct sigaction sa;

	sa.sa_flags = 0;
	sa.sa_handler = sigterm;
	sigemptyset(&sa.sa_mask);

	sigaction(SIGINT, &sa, NULL);
	sigaction(SIGTERM, &sa, NULL);

	sa.sa_handler = sigusr1;
	sigaction(SIGUSR1, &sa, NULL);

	sa.sa_handler = sigusr2;
	sigaction(SIGUSR2, &sa, NULL);

	sa.sa_handler = SIG_IGN;
	sigaction(SIGPIPE, &sa, NULL);
    }
#else
    FUNC12(SIGINT, sigterm);
    FUNC12(SIGTERM, sigterm);
    FUNC12(SIGUSR1, sigusr1);
    FUNC12(SIGUSR2, sigusr2);
    FUNC12(SIGPIPE, SIG_IGN);
#endif
#ifdef SUPPORT_DETACH
    if (detach_from_console)
	daemon(0, 0);
#endif
    FUNC8(NULL);

    if (launchd_flag) {
	heim_sipc mach;
	FUNC3(service_name, kcm_service, NULL, &mach);
    } else {
	heim_sipc un;
	FUNC4(service_name, kcm_service, NULL, &un);
    }

    FUNC2();

    FUNC6(kcm_context);
    return 0;
}