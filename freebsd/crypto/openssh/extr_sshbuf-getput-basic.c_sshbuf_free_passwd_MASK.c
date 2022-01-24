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
struct passwd {struct passwd* pw_name; struct passwd* pw_passwd; struct passwd* pw_gecos; struct passwd* pw_class; struct passwd* pw_dir; struct passwd* pw_shell; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct passwd*) ; 

void
FUNC1(struct passwd *pwent)
{
	if (pwent == NULL)
		return;
	FUNC0(pwent->pw_shell);
	FUNC0(pwent->pw_dir);
#ifdef HAVE_STRUCT_PASSWD_PW_CLASS
	free(pwent->pw_class);
#endif
#ifdef HAVE_STRUCT_PASSWD_PW_GECOS
	free(pwent->pw_gecos);
#endif
	FUNC0(pwent->pw_passwd);
	FUNC0(pwent->pw_name);
	FUNC0(pwent);
}