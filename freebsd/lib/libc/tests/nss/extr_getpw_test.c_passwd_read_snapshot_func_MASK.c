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
typedef  int /*<<< orphan*/  uid_t ;
typedef  void* time_t ;
struct passwd {int pw_fields; void* pw_expire; int /*<<< orphan*/ * pw_shell; int /*<<< orphan*/ * pw_dir; int /*<<< orphan*/ * pw_gecos; int /*<<< orphan*/ * pw_class; void* pw_change; int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_uid; int /*<<< orphan*/ * pw_passwd; int /*<<< orphan*/ * pw_name; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC2 (struct passwd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 void* FUNC4 (char*) ; 
 char* FUNC5 (char**,char*) ; 
 scalar_t__ FUNC6 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC7(struct passwd *pwd, char *line)
{
	char *s, *ps, *ts;
	int i;

#ifdef DEBUG
	printf("1 line read from snapshot:\n%s\n", line);
#endif

	i = 0;
	ps = line;
	FUNC2(pwd, 0, sizeof(struct passwd));
	while ((s = FUNC5(&ps, ":")) != NULL) {
		switch (i) {
		case 0:
			pwd->pw_name = FUNC4(s);
			FUNC0(pwd->pw_name != NULL);
			break;
		case 1:
			pwd->pw_passwd = FUNC4(s);
			FUNC0(pwd->pw_passwd != NULL);
			break;
		case 2:
			pwd->pw_uid = (uid_t)FUNC6(s, &ts, 10);
			if (*ts != '\0')
				goto fin;
			break;
		case 3:
			pwd->pw_gid = (gid_t)FUNC6(s, &ts, 10);
			if (*ts != '\0')
				goto fin;
			break;
		case 4:
			pwd->pw_change = (time_t)FUNC6(s, &ts, 10);
			if (*ts != '\0')
				goto fin;
			break;
		case 5:
			pwd->pw_class = FUNC4(s);
			FUNC0(pwd->pw_class != NULL);
			break;
		case 6:
			pwd->pw_gecos = FUNC4(s);
			FUNC0(pwd->pw_gecos != NULL);
			break;
		case 7:
			pwd->pw_dir = FUNC4(s);
			FUNC0(pwd->pw_dir != NULL);
			break;
		case 8:
			pwd->pw_shell = FUNC4(s);
			FUNC0(pwd->pw_shell != NULL);
			break;
		case 9:
			pwd->pw_expire = (time_t)FUNC6(s, &ts, 10);
			if (*ts != '\0')
				goto fin;
			break;
		case 10:
			pwd->pw_fields = (int)FUNC6(s, &ts, 10);
			if (*ts != '\0')
				goto fin;
			break;
		default:
			break;
		}
		++i;
	}

fin:
	if (i != 11) {
		FUNC1(pwd);
		FUNC2(pwd, 0, sizeof(struct passwd));
		return (-1);
	}

	return (0);
}