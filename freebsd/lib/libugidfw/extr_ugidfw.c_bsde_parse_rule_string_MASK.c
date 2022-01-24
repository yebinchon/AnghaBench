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
struct mac_bsdextended_rule {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,char**,struct mac_bsdextended_rule*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char**,char*) ; 

int
FUNC4(const char *string, struct mac_bsdextended_rule *rule,
    size_t buflen, char *errstr)
{
	char *stringdup, *stringp, *argv[100], **ap;
	int argc, error;

	stringp = stringdup = FUNC2(string);
	while (*stringp == ' ' || *stringp == '\t')
		stringp++;

	argc = 0;
	for (ap = argv; (*ap = FUNC3(&stringp, " \t")) != NULL;) {
		argc++;
		if (**ap != '\0')
			if (++ap >= &argv[100])
				break;
	}

	error = FUNC0(argc, argv, rule, buflen, errstr);

	FUNC1(stringdup);

	return (error);
}