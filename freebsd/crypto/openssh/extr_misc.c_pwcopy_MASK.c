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
struct passwd {void* pw_shell; void* pw_dir; void* pw_class; int /*<<< orphan*/  pw_change; int /*<<< orphan*/  pw_expire; int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_uid; void* pw_gecos; void* pw_passwd; void* pw_name; } ;

/* Variables and functions */
 struct passwd* FUNC0 (int,int) ; 
 void* FUNC1 (void*) ; 

struct passwd *
FUNC2(struct passwd *pw)
{
	struct passwd *copy = FUNC0(1, sizeof(*copy));

	copy->pw_name = FUNC1(pw->pw_name);
	copy->pw_passwd = FUNC1(pw->pw_passwd);
#ifdef HAVE_STRUCT_PASSWD_PW_GECOS
	copy->pw_gecos = xstrdup(pw->pw_gecos);
#endif
	copy->pw_uid = pw->pw_uid;
	copy->pw_gid = pw->pw_gid;
#ifdef HAVE_STRUCT_PASSWD_PW_EXPIRE
	copy->pw_expire = pw->pw_expire;
#endif
#ifdef HAVE_STRUCT_PASSWD_PW_CHANGE
	copy->pw_change = pw->pw_change;
#endif
#ifdef HAVE_STRUCT_PASSWD_PW_CLASS
	copy->pw_class = xstrdup(pw->pw_class);
#endif
	copy->pw_dir = FUNC1(pw->pw_dir);
	copy->pw_shell = FUNC1(pw->pw_shell);
	return copy;
}