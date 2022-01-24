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
struct passwd {void* pw_shell; void* pw_dir; void* pw_gecos; void* pw_class; void* pw_passwd; void* pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 struct passwd* FUNC1 (char*) ; 
 void* FUNC2 (void*) ; 

__attribute__((used)) static struct passwd *
FUNC3(char *name)
{
	static struct passwd save;
	struct passwd *p;

	if ((p = FUNC1(name)) == NULL)
		return (p);
	if (save.pw_name) {
		FUNC0(save.pw_name);
		FUNC0(save.pw_passwd);
		FUNC0(save.pw_class);
		FUNC0(save.pw_gecos);
		FUNC0(save.pw_dir);
		FUNC0(save.pw_shell);
	}
	save = *p;
	save.pw_name = FUNC2(p->pw_name);
	save.pw_passwd = FUNC2(p->pw_passwd);
	save.pw_class = FUNC2(p->pw_class);
	save.pw_gecos = FUNC2(p->pw_gecos);
	save.pw_dir = FUNC2(p->pw_dir);
	save.pw_shell = FUNC2(p->pw_shell);
	return (&save);
}