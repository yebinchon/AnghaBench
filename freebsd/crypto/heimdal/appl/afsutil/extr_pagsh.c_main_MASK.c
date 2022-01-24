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
typedef  int /*<<< orphan*/  tf ;
struct passwd {char* pw_shell; } ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 char* TKT_ROOT ; 
 scalar_t__ c_flag ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 int /*<<< orphan*/  getargs ; 
 char* FUNC8 (char*) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ help_flag ; 
 struct passwd* FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 char** FUNC21 (unsigned int) ; 
 int FUNC22 (char*) ; 
 int /*<<< orphan*/  num_args ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*,int,char*,char*,...) ; 
 char* FUNC26 (char*) ; 
 char* FUNC27 (char*,char) ; 
 int /*<<< orphan*/  typename_arg ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 
 scalar_t__ version_flag ; 

int
FUNC31(int argc, char **argv)
{
    int f;
    char tf[1024];
    char *p;

    char *path;
    char **args;
    unsigned int i;
    int optind = 0;

    FUNC24(argv[0]);
    if(FUNC7(getargs, num_args, argc, argv, &optind))
	FUNC30(1);
    if(help_flag)
	FUNC30(0);
    if(version_flag) {
	FUNC23(NULL);
	FUNC6(0);
    }

    argc -= optind;
    argv += optind;

#ifdef KRB5
    {
	krb5_error_code ret;
	krb5_context context;
	krb5_ccache id;
	const char *name;

	ret = krb5_init_context(&context);
	if (ret) /* XXX should this really call exit ? */
	    errx(1, "no kerberos 5 support");

	ret = krb5_cc_new_unique(context, typename_arg, NULL, &id);
	if (ret)
	    krb5_err(context, 1, ret, "Failed generating credential cache");

	name = krb5_cc_get_name(context, id);
	if (name == NULL)
	    krb5_errx(context, 1, "Generated credential cache have no name");

	snprintf(tf, sizeof(tf), "%s:%s", krb5_cc_get_type(context, id), name);

	ret = krb5_cc_close(context, id);
	if (ret)
	    krb5_err(context, 1, ret, "Failed closing credential cache");

	krb5_free_context(context);

	esetenv("KRB5CCNAME", tf, 1);
    }
#endif

    FUNC25 (tf, sizeof(tf), "%s_XXXXXX", TKT_ROOT);
    f = FUNC22 (tf);
    if (f < 0)
	FUNC1(1, "mkstemp failed");
    FUNC0 (f);
    FUNC28 (tf);
    FUNC3("KRBTKFILE", tf, 1);

    i = 0;

    args = (char **) FUNC21((argc + 10)*sizeof(char *));
    if (args == NULL)
	FUNC2 (1, "Out of memory allocating %lu bytes",
	      (unsigned long)((argc + 10)*sizeof(char *)));

    if(*argv == NULL) {
	path = FUNC8("SHELL");
	if(path == NULL){
	    struct passwd *pw = FUNC10(FUNC9());
	    if (pw == NULL)
		FUNC2(1, "no such user: %d", (int)FUNC9());
	    path = FUNC26(pw->pw_shell);
	}
    } else {
	path = FUNC26(*argv++);
    }
    if (path == NULL)
	FUNC2 (1, "Out of memory copying path");

    p=FUNC27(path, '/');
    if(p)
	args[i] = FUNC26(p+1);
    else
	args[i] = FUNC26(path);

    if (args[i++] == NULL)
	FUNC2 (1, "Out of memory copying arguments");

    while(*argv)
	args[i++] = *argv++;

    args[i++] = NULL;

    if(FUNC11())
	FUNC12();

    FUNC29("PAGPID");
    FUNC5(path, args);
    if (errno == ENOENT || c_flag) {
	char **sh_args = FUNC21 ((i + 2) * sizeof(char *));
	unsigned int j;

	if (sh_args == NULL)
	    FUNC2 (1, "Out of memory copying sh arguments");
	for (j = 1; j < i; ++j)
	    sh_args[j + 2] = args[j];
	sh_args[0] = "sh";
	sh_args[1] = "-c";
	sh_args[2] = path;
	FUNC4 ("/bin/sh", sh_args);
    }
    FUNC1 (1, "execvp");
}