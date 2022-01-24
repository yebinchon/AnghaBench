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
struct gctl_req {int dummy; } ;
struct g_option {int go_type; char* go_val; int /*<<< orphan*/  go_char; int /*<<< orphan*/ * go_name; } ;
struct g_command {int gc_flags; struct g_option* gc_options; } ;
typedef  int /*<<< orphan*/  opts ;
typedef  int /*<<< orphan*/  argname ;

/* Variables and functions */
 int G_FLAG_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (struct g_option*) ; 
 scalar_t__ FUNC1 (struct g_option*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_option*) ; 
 scalar_t__ FUNC3 (struct g_option*) ; 
 scalar_t__ G_TYPE_BOOL ; 
 int G_TYPE_MASK ; 
 int G_TYPE_MULTI ; 
 char* G_VAL_OPTIONAL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct g_option* FUNC5 (struct g_command*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gctl_req*,char*,int,...) ; 
 int FUNC7 (int,char**,char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC8 (struct gctl_req*,struct g_option*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(struct g_command *cmd, struct gctl_req *req, int *argc,
    char ***argv)
{
	struct g_option *opt;
	char opts[64];
	unsigned i;
	int ch;

	*opts = '\0';
	if ((cmd->gc_flags & G_FLAG_VERBOSE) != 0)
		FUNC10(opts, "v", sizeof(opts));
	for (i = 0; ; i++) {
		opt = &cmd->gc_options[i];
		if (opt->go_name == NULL)
			break;
		FUNC4(FUNC3(opt) != 0);
		FUNC4((opt->go_type & ~(G_TYPE_MASK | G_TYPE_MULTI)) == 0);
		/* Multiple bool arguments makes no sense. */
		FUNC4(FUNC3(opt) != G_TYPE_BOOL ||
		    (opt->go_type & G_TYPE_MULTI) == 0);
		FUNC11(opts, sizeof(opts), "%c", opt->go_char);
		if (FUNC3(opt) != G_TYPE_BOOL)
			FUNC10(opts, ":", sizeof(opts));
	}

	/*
	 * Add specified arguments.
	 */
	while ((ch = FUNC7(*argc, *argv, opts)) != -1) {
		/* Standard (not passed to kernel) options. */
		switch (ch) {
		case 'v':
			verbose = 1;
			continue;
		}
		/* Options passed to kernel. */
		opt = FUNC5(cmd, ch);
		if (opt == NULL)
			FUNC12();
		if (!FUNC2(opt) && FUNC1(opt)) {
			FUNC13("Option '%c' specified twice.", opt->go_char);
			FUNC12();
		}
		FUNC0(opt);

		if (FUNC3(opt) == G_TYPE_BOOL)
			FUNC8(req, opt, "1");
		else
			FUNC8(req, opt, optarg);
	}
	*argc -= optind;
	*argv += optind;

	/*
	 * Add not specified arguments, but with default values.
	 */
	for (i = 0; ; i++) {
		opt = &cmd->gc_options[i];
		if (opt->go_name == NULL)
			break;
		if (FUNC1(opt))
			continue;

		if (FUNC3(opt) == G_TYPE_BOOL) {
			FUNC4(opt->go_val == NULL);
			FUNC8(req, opt, "0");
		} else {
			if (opt->go_val == NULL) {
				FUNC13("Option '%c' not specified.",
				    opt->go_char);
				FUNC12();
			} else if (opt->go_val == G_VAL_OPTIONAL) {
				/* add nothing. */
			} else {
				FUNC8(req, opt, opt->go_val);
			}
		}
	}

	/*
	 * Add rest of given arguments.
	 */
	FUNC6(req, "nargs", sizeof(int), argc);
	for (i = 0; i < (unsigned)*argc; i++) {
		char argname[16];

		FUNC9(argname, sizeof(argname), "arg%u", i);
		FUNC6(req, argname, -1, (*argv)[i]);
	}
}