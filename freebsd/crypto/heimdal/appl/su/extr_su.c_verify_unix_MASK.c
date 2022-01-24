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
struct passwd {char* pw_passwd; char* pw_name; scalar_t__ pw_uid; } ;
typedef  int /*<<< orphan*/  pw_buf ;
typedef  int /*<<< orphan*/  prompt ;

/* Variables and functions */
 int GROUP_NOT_MEMBER ; 
 int LOG_AUTH ; 
 int LOG_ERR ; 
 int /*<<< orphan*/  ROOT_GROUP ; 
 int FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char*,char*,...) ; 

__attribute__((used)) static int
FUNC8(struct passwd *login, struct passwd *su)
{
    char prompt[128];
    char pw_buf[1024];
    char *pw;
    int r;
    if(su->pw_passwd != NULL && *su->pw_passwd != '\0') {
	FUNC5(prompt, sizeof(prompt), "%s's password: ", su->pw_name);
	r = FUNC0(pw_buf, sizeof(pw_buf), prompt, 0);
	if(r != 0)
	    FUNC2(0);
	pw = FUNC1(pw_buf, su->pw_passwd);
	FUNC4(pw_buf, 0, sizeof(pw_buf));
	if(FUNC6(pw, su->pw_passwd) != 0) {
	    FUNC7 (LOG_ERR | LOG_AUTH, "%s to %s: incorrect password",
		    login->pw_name, su->pw_name);
	    return 1;
	}
    }
    /* if su:ing to root, check membership of group wheel or root; if
       that group doesn't exist, or is empty, allow anyone to su
       root */
    if(su->pw_uid == 0) {
#ifndef ROOT_GROUP
#define ROOT_GROUP "wheel"
#endif
	int gs = FUNC3(ROOT_GROUP, login->pw_name);
	if(gs == GROUP_NOT_MEMBER) {
	    FUNC7 (LOG_ERR | LOG_AUTH, "%s to %s: not in group %s",
		    login->pw_name, su->pw_name, ROOT_GROUP);
	    return 1;
	}
	return 0;
    }
    return 0;
}