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
struct passwd {int /*<<< orphan*/ * pw_shell; int /*<<< orphan*/ * pw_dir; int /*<<< orphan*/ * pw_passwd; int /*<<< orphan*/ * pw_name; int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct passwd*) ; 
 struct passwd* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct passwd*
FUNC3(const struct passwd *pwd)
{
    struct passwd *info;

    info = FUNC1(sizeof(*info));
    if(info == NULL)
	return NULL;
    info->pw_name = FUNC2(pwd->pw_name);
    info->pw_passwd = FUNC2(pwd->pw_passwd);
    info->pw_uid = pwd->pw_uid;
    info->pw_gid = pwd->pw_gid;
    info->pw_dir = FUNC2(pwd->pw_dir);
    info->pw_shell = FUNC2(pwd->pw_shell);
    if(info->pw_name == NULL || info->pw_passwd == NULL ||
       info->pw_dir == NULL || info->pw_shell == NULL) {
	FUNC0 (info);
	return NULL;
    }
    return info;
}