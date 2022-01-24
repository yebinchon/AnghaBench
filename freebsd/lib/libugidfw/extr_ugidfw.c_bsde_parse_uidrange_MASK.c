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
typedef  unsigned long uid_t ;
struct passwd {unsigned long pw_uid; } ;

/* Variables and functions */
 struct passwd* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,char*) ; 
 char* FUNC2 (char**,char*) ; 
 unsigned long FUNC3 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC4(char *spec, uid_t *min, uid_t *max,
    size_t buflen, char *errstr){
	struct passwd *pwd;
	uid_t uid1, uid2;
	char *spec1, *spec2, *endp;
	unsigned long value;

	spec2 = spec;
	spec1 = FUNC2(&spec2, ":");

	pwd = FUNC0(spec1);
	if (pwd != NULL)
		uid1 = pwd->pw_uid;
	else {
		value = FUNC3(spec1, &endp, 10);
		if (*endp != '\0') {
			FUNC1(errstr, buflen, "invalid uid: '%s'", spec1);
			return (-1);
		}
		uid1 = value;
	}

	if (spec2 == NULL) {
		*max = *min = uid1;
		return (0);
	}

	pwd = FUNC0(spec2);
	if (pwd != NULL)
		uid2 = pwd->pw_uid;
	else {
		value = FUNC3(spec2, &endp, 10);
		if (*endp != '\0') {
			FUNC1(errstr, buflen, "invalid uid: '%s'", spec2);
			return (-1);
		}
		uid2 = value;
	}

	*min = uid1;
	*max = uid2;

	return (0);
}