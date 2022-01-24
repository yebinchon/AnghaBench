#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_uid; int /*<<< orphan*/  pw_name; } ;
struct group {int /*<<< orphan*/  gr_gid; } ;
typedef  TYPE_1__* kcm_ccache ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_3__ {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int errno ; 
 struct group* FUNC1 (int /*<<< orphan*/ ) ; 
 struct group* FUNC2 (scalar_t__*) ; 
 struct passwd* FUNC3 (scalar_t__*) ; 
 struct passwd* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 scalar_t__* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__* system_group ; 
 scalar_t__* system_user ; 

__attribute__((used)) static int FUNC7(kcm_ccache ccache)
{
    uid_t uid = 0;
    gid_t gid = 0;
    struct passwd *pw;
    struct group *gr;
    int uid_p = 0;
    int gid_p = 0;

    if (system_user != NULL) {
	if (FUNC5((unsigned char)system_user[0])) {
	    pw = FUNC4(FUNC0(system_user));
	} else {
	    pw = FUNC3(system_user);
	}
	if (pw == NULL) {
	    return errno;
	}

	system_user = FUNC6(pw->pw_name);
	if (system_user == NULL) {
	    return ENOMEM;
	}

	uid = pw->pw_uid; uid_p = 1;
	gid = pw->pw_gid; gid_p = 1;
    }

    if (system_group != NULL) {
	if (FUNC5((unsigned char)system_group[0])) {
	    gr = FUNC1(FUNC0(system_group));
	} else {
	    gr = FUNC2(system_group);
	}
	if (gr == NULL) {
	    return errno;
	}

	gid = gr->gr_gid; gid_p = 1;
    }

    if (uid_p)
	ccache->uid = uid;
    else
	ccache->uid = 0; /* geteuid() XXX */

    if (gid_p)
	ccache->gid = gid;
    else
	ccache->gid = 0; /* getegid() XXX */

    return 0;
}