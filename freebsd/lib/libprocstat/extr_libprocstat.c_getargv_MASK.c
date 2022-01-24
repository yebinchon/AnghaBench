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
struct procstat {scalar_t__ type; int ki_pid; int /*<<< orphan*/  core; int /*<<< orphan*/  envv; int /*<<< orphan*/  argv; } ;
struct kinfo_proc {scalar_t__ type; int ki_pid; int /*<<< orphan*/  core; int /*<<< orphan*/  envv; int /*<<< orphan*/  argv; } ;
struct argvec {size_t bufsize; char* buf; char** argv; int argc; } ;
typedef  enum psc_type { ____Placeholder_psc_type } psc_type ;

/* Variables and functions */
 size_t ARG_MAX ; 
 int CTL_KERN ; 
 scalar_t__ EPERM ; 
 scalar_t__ ESRCH ; 
 int KERN_PROC ; 
 int KERN_PROC_ARGS ; 
 int KERN_PROC_ENV ; 
 scalar_t__ PROCSTAT_CORE ; 
 scalar_t__ PROCSTAT_KVM ; 
 scalar_t__ PROCSTAT_SYSCTL ; 
 int PSC_TYPE_ARGV ; 
 int PSC_TYPE_ENVV ; 
 struct argvec* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct procstat*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int,char*,size_t*) ; 
 char** FUNC4 (char**,int) ; 
 char* FUNC5 (char*,size_t) ; 
 scalar_t__ FUNC6 (char*) ; 
 int FUNC7 (int*,int /*<<< orphan*/ ,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static char **
FUNC10(struct procstat *procstat, struct kinfo_proc *kp, size_t nchr, int env)
{
	int error, name[4], argc, i;
	struct argvec *av, **avp;
	enum psc_type type;
	size_t len;
	char *p, **argv;

	FUNC1(procstat);
	FUNC1(kp);
	if (procstat->type == PROCSTAT_KVM) {
		FUNC9("can't use kvm access method");
		return (NULL);
	}
	if (procstat->type != PROCSTAT_SYSCTL &&
	    procstat->type != PROCSTAT_CORE) {
		FUNC9("unknown access method: %d", procstat->type);
		return (NULL);
	}

	if (nchr == 0 || nchr > ARG_MAX)
		nchr = ARG_MAX;

	avp = (struct argvec **)(env ? &procstat->argv : &procstat->envv);
	av = *avp;

	if (av == NULL)
	{
		av = FUNC0(nchr);
		if (av == NULL)
		{
			FUNC8("malloc(%zu)", nchr);
			return (NULL);
		}
		*avp = av;
	} else if (av->bufsize < nchr) {
		av->buf = FUNC5(av->buf, nchr);
		if (av->buf == NULL) {
			FUNC8("malloc(%zu)", nchr);
			return (NULL);
		}
	}
	if (procstat->type == PROCSTAT_SYSCTL) {
		name[0] = CTL_KERN;
		name[1] = KERN_PROC;
		name[2] = env ? KERN_PROC_ENV : KERN_PROC_ARGS;
		name[3] = kp->ki_pid;
		len = nchr;
		error = FUNC7(name, FUNC2(name), av->buf, &len, NULL, 0);
		if (error != 0 && errno != ESRCH && errno != EPERM)
			FUNC8("sysctl(kern.proc.%s)", env ? "env" : "args");
		if (error != 0 || len == 0)
			return (NULL);
	} else /* procstat->type == PROCSTAT_CORE */ {
		type = env ? PSC_TYPE_ENVV : PSC_TYPE_ARGV;
		len = nchr;
		if (FUNC3(procstat->core, type, av->buf, &len)
		    == NULL) {
			return (NULL);
		}
	}

	argv = av->argv;
	argc = av->argc;
	i = 0;
	for (p = av->buf; p < av->buf + len; p += FUNC6(p) + 1) {
		argv[i++] = p;
		if (i < argc)
			continue;
		/* Grow argv. */
		argc += argc;
		argv = FUNC4(argv, sizeof(char *) * argc);
		if (argv == NULL) {
			FUNC8("malloc(%zu)", sizeof(char *) * argc);
			return (NULL);
		}
		av->argv = argv;
		av->argc = argc;
	}
	argv[i] = NULL;

	return (argv);
}