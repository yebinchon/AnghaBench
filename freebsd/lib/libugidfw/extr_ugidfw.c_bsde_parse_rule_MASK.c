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
struct mac_bsdextended_rule {int /*<<< orphan*/  mbr_mode; int /*<<< orphan*/  mbr_object; int /*<<< orphan*/  mbr_subject; } ;

/* Variables and functions */
 int FUNC0 (int,char**,int /*<<< orphan*/ *,size_t,char*) ; 
 int FUNC1 (int,char**,int /*<<< orphan*/ *,size_t,char*) ; 
 int FUNC2 (int,char**,int /*<<< orphan*/ *,size_t,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mac_bsdextended_rule*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

int
FUNC6(int argc, char *argv[], struct mac_bsdextended_rule *rule,
    size_t buflen, char *errstr)
{
	int subject, subject_elements, subject_elements_length;
	int object, object_elements, object_elements_length;
	int mode, mode_elements, mode_elements_length;
	int error, i;

	FUNC3(rule, sizeof(*rule));

	if (argc < 1) {
		FUNC4(errstr, buflen, "Rule must begin with subject");
		return (-1);
	}

	if (FUNC5(argv[0], "subject") != 0) {
		FUNC4(errstr, buflen, "Rule must begin with subject");
		return (-1);
	}
	subject = 0;
	subject_elements = 1;

	/* Search forward for object. */

	object = -1;
	for (i = 1; i < argc; i++)
		if (FUNC5(argv[i], "object") == 0)
			object = i;

	if (object == -1) {
		FUNC4(errstr, buflen, "Rule must contain an object");
		return (-1);
	}

	/* Search forward for mode. */
	mode = -1;
	for (i = object; i < argc; i++)
		if (FUNC5(argv[i], "mode") == 0)
			mode = i;

	if (mode == -1) {
		FUNC4(errstr, buflen, "Rule must contain mode");
		return (-1);
	}

	subject_elements_length = object - subject - 1;
	object_elements = object + 1;
	object_elements_length = mode - object_elements;
	mode_elements = mode + 1;
	mode_elements_length = argc - mode_elements;

	error = FUNC2(subject_elements_length,
	    argv + subject_elements, &rule->mbr_subject, buflen, errstr);
	if (error)
		return (-1);

	error = FUNC1(object_elements_length,
	    argv + object_elements, &rule->mbr_object, buflen, errstr);
	if (error)
		return (-1);

	error = FUNC0(mode_elements_length, argv + mode_elements,
	    &rule->mbr_mode, buflen, errstr);
	if (error)
		return (-1);

	return (0);
}