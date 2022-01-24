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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINVAL ; 
 int LINE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* MAC_CONFFILE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 char* FUNC4 (char*) ; 
 int internal_initialized ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  label_default_head ; 
 int FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* FUNC8 (char**) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 
 char* FUNC11 (char**,char*) ; 

__attribute__((used)) static int
FUNC12(int ignore_errors)
{
	const char *filename;
	char line[LINE_MAX];
	FILE *file;
	int error;

	error = 0;

	FUNC0(&label_default_head);

	if (!FUNC5() && FUNC4("MAC_CONFFILE") != NULL)
		filename = FUNC4("MAC_CONFFILE");
	else
		filename = MAC_CONFFILE;
	file = FUNC3(filename, "re");
	if (file == NULL)
		return (0);

	while (FUNC2(line, LINE_MAX, file)) {
		char *comment, *parse, *statement;

		if (line[FUNC10(line)-1] == '\n')
			line[FUNC10(line)-1] = '\0';
		else {
			if (ignore_errors)
				continue;
			FUNC1(file);
			error = EINVAL;
			goto just_return;
		}

		/* Remove any comment. */
		comment = line;
		parse = FUNC11(&comment, "#");

		/* Blank lines OK. */
		statement = FUNC8(&parse);
		if (statement == NULL)
			continue;

		if (FUNC9(statement, "default_labels") == 0) {
			char *name, *labels;

			name = FUNC8(&parse);
			labels = FUNC8(&parse);
			if (name == NULL || labels == NULL ||
			    FUNC8(&parse) != NULL) {
				if (ignore_errors)
					continue;
				error = EINVAL;
				FUNC1(file);
				goto just_return;
			}

			if (FUNC6(name, labels) == -1) {
				if (ignore_errors)
					continue;
				FUNC1(file);
				goto just_return;
			}
		} else if (FUNC9(statement, "default_ifnet_labels") == 0 ||
		    FUNC9(statement, "default_file_labels") == 0 ||
		    FUNC9(statement, "default_process_labels") == 0) {
			char *labels, *type;

			if (FUNC9(statement, "default_ifnet_labels") == 0)
				type = "ifnet";
			else if (FUNC9(statement, "default_file_labels") == 0)
				type = "file";
			else if (FUNC9(statement, "default_process_labels") ==
			    0)
				type = "process";

			labels = FUNC8(&parse);
			if (labels == NULL || FUNC8(&parse) != NULL) {
				if (ignore_errors)
					continue;
				error = EINVAL;
				FUNC1(file);
				goto just_return;
			}

			if (FUNC6(type, labels) == -1) {
				if (ignore_errors)
					continue;
				FUNC1(file);
				goto just_return;
			}
		} else {
			if (ignore_errors)
				continue;
			FUNC1(file);
			error = EINVAL;
			goto just_return;
		}
	}

	FUNC1(file);

	internal_initialized = 1;

just_return:
	if (error != 0)
		FUNC7();
	return (error);
}