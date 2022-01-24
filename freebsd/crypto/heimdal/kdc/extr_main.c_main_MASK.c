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
typedef  int /*<<< orphan*/  krb5_kdc_configuration ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 scalar_t__ KRB5_CONFIG_BADFORMAT ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGXCPU ; 
 void* SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ detach_from_console ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  hdb_kt_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,void*) ; 
 void* sigterm ; 
 int /*<<< orphan*/  FUNC13 () ; 

int
FUNC14(int argc, char **argv)
{
    krb5_error_code ret;
    krb5_context context;
    krb5_kdc_configuration *config;

    FUNC9(argv[0]);

    ret = FUNC5(&context);
    if (ret == KRB5_CONFIG_BADFORMAT)
	FUNC3 (1, "krb5_init_context failed to parse configuration file");
    else if (ret)
	FUNC3 (1, "krb5_init_context failed: %d", ret);

    ret = FUNC6(context, &hdb_kt_ops);
    if (ret)
	FUNC3 (1, "krb5_kt_register(HDB) failed: %d", ret);

    config = FUNC1(context, argc, argv);

#ifdef HAVE_SIGACTION
    {
	struct sigaction sa;

	sa.sa_flags = 0;
	sa.sa_handler = sigterm;
	sigemptyset(&sa.sa_mask);

	sigaction(SIGINT, &sa, NULL);
	sigaction(SIGTERM, &sa, NULL);
#ifdef SIGXCPU
	sigaction(SIGXCPU, &sa, NULL);
#endif

	sa.sa_handler = SIG_IGN;
#ifdef SIGPIPE
	sigaction(SIGPIPE, &sa, NULL);
#endif
    }
#else
    FUNC12(SIGINT, sigterm);
    FUNC12(SIGTERM, sigterm);
#ifdef SIGXCPU
    signal(SIGXCPU, sigterm);
#endif
#ifdef SIGPIPE
    signal(SIGPIPE, SIG_IGN);
#endif
#endif
#ifdef SUPPORT_DETACH
    if (detach_from_console)
	daemon(0, 0);
#endif
#ifdef __APPLE__
    bonjour_announce(context, config);
#endif
    FUNC8(NULL);

    FUNC13();

    FUNC7(context, config);
    FUNC4(context);
    return 0;
}