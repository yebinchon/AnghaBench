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
struct command_map_entry {int (* fn ) (int,char**) ;int /*<<< orphan*/  silent; } ;

/* Variables and functions */
 int /*<<< orphan*/ * be ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct command_map_entry* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 char* FUNC6 (char*) ; 
 int FUNC7 (int,char**) ; 
 int FUNC8 (int) ; 

int
FUNC9(int argc, char *argv[])
{
	struct command_map_entry *cmd;
	const char *command;
	char *root;
	int rc;

	cmd = NULL;
	root = NULL;
	if (argc < 2)
		return (FUNC8(false));

	if (FUNC5(argv[1], "-r") == 0) {
		if (argc < 4)
			return (FUNC8(false));
		root = FUNC6(argv[2]);
		command = argv[3];
		argc -= 3;
		argv += 3;
	} else {
		command = argv[1];
		argc -= 1;
		argv += 1;
	}

	/* Handle command aliases */
	if (FUNC5(command, "umount") == 0)
		command = "unmount";

	if (FUNC5(command, "ujail") == 0)
		command = "unjail";

	if ((FUNC5(command, "-?") == 0) || (FUNC5(command, "-h") == 0))
		return (FUNC8(true));

	if ((cmd = FUNC1(command)) == NULL) {
		FUNC0(stderr, "unknown command: %s\n", command);
		return (FUNC8(false));
	}

	if ((be = FUNC3(root)) == NULL)
		return (-1);

	FUNC4(be, !cmd->silent);

	rc = cmd->fn(argc, argv);

	FUNC2(be);
	return (rc);
}