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
struct passwd {int /*<<< orphan*/  pw_uid; } ;
struct group {int /*<<< orphan*/  gr_gid; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct group* FUNC1 (char*) ; 
 struct passwd* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static int
FUNC5(char *pair, uid_t *uid, gid_t *gid)
{
	struct group *gr;
	struct passwd *pw;
	char *cp;

	cp = FUNC4(pair, ':');
	if (cp) {
		*cp++ = '\0';
		if (*cp) {
			gr = FUNC1(cp);
			if (gr) {
				*gid = gr->gr_gid;
			} else
				FUNC3("Invalid group name %s, ignored",
				    0, cp);
		}
	}
	if (*pair) {
		pw = FUNC2(pair);
		if (pw) {
			*uid = pw->pw_uid;
		} else
			FUNC3("Invalid user name %s, ignored", 0, pair);
	}
	FUNC0();
	return 0;
}