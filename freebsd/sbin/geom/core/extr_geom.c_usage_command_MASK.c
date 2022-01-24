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
struct g_option {char* go_name; int go_char; int /*<<< orphan*/ * go_val; } ;
struct g_command {char* gc_name; int gc_flags; struct g_option* gc_options; int /*<<< orphan*/ * gc_usage; } ;

/* Variables and functions */
 int G_FLAG_VERBOSE ; 
 scalar_t__ FUNC0 (struct g_option*) ; 
 scalar_t__ G_TYPE_BOOL ; 
 char* comm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char**,char*) ; 

__attribute__((used)) static void
FUNC5(struct g_command *cmd, const char *prefix)
{
	struct g_option *opt;
	unsigned i;

	if (cmd->gc_usage != NULL) {
		char *pos, *ptr, *sptr;

		sptr = ptr = FUNC3(cmd->gc_usage);
		while ((pos = FUNC4(&ptr, "\n")) != NULL) {
			if (*pos == '\0')
				continue;
			FUNC1(stderr, "%s %s %s %s\n", prefix, comm,
			    cmd->gc_name, pos);
		}
		FUNC2(sptr);
		return;
	}

	FUNC1(stderr, "%s %s %s", prefix, comm, cmd->gc_name);
	if ((cmd->gc_flags & G_FLAG_VERBOSE) != 0)
		FUNC1(stderr, " [-v]");
	for (i = 0; ; i++) {
		opt = &cmd->gc_options[i];
		if (opt->go_name == NULL)
			break;
		if (opt->go_val != NULL || FUNC0(opt) == G_TYPE_BOOL)
			FUNC1(stderr, " [");
		else
			FUNC1(stderr, " ");
		FUNC1(stderr, "-%c", opt->go_char);
		if (FUNC0(opt) != G_TYPE_BOOL)
			FUNC1(stderr, " %s", opt->go_name);
		if (opt->go_val != NULL || FUNC0(opt) == G_TYPE_BOOL)
			FUNC1(stderr, "]");
	}
	FUNC1(stderr, "\n");
}