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
typedef  scalar_t__ uid_t ;
typedef  void* time_t ;
struct passwd {int pw_fields; void* pw_expire; int /*<<< orphan*/  pw_shell; int /*<<< orphan*/  pw_dir; int /*<<< orphan*/  pw_gecos; int /*<<< orphan*/  pw_class; int /*<<< orphan*/  pw_passwd; void* pw_change; scalar_t__ pw_gid; scalar_t__ pw_uid; int /*<<< orphan*/  pw_name; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct passwd*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC3 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *,char**,size_t*) ; 

__attribute__((used)) static int
FUNC4(const nvlist_t *nvl, struct passwd *pwd, char *buffer,
    size_t bufsize)
{
	int error;

	if (!FUNC1(nvl, "pw_name"))
		return (EINVAL);

	FUNC0(pwd, sizeof(*pwd));

	error = FUNC3(nvl, "pw_name", &pwd->pw_name, &buffer,
	    &bufsize);
	if (error != 0)
		return (error);
	pwd->pw_uid = (uid_t)FUNC2(nvl, "pw_uid");
	pwd->pw_gid = (gid_t)FUNC2(nvl, "pw_gid");
	pwd->pw_change = (time_t)FUNC2(nvl, "pw_change");
	error = FUNC3(nvl, "pw_passwd", &pwd->pw_passwd, &buffer,
	    &bufsize);
	if (error != 0)
		return (error);
	error = FUNC3(nvl, "pw_class", &pwd->pw_class, &buffer,
	    &bufsize);
	if (error != 0)
		return (error);
	error = FUNC3(nvl, "pw_gecos", &pwd->pw_gecos, &buffer,
	    &bufsize);
	if (error != 0)
		return (error);
	error = FUNC3(nvl, "pw_dir", &pwd->pw_dir, &buffer,
	    &bufsize);
	if (error != 0)
		return (error);
	error = FUNC3(nvl, "pw_shell", &pwd->pw_shell, &buffer,
	    &bufsize);
	if (error != 0)
		return (error);
	pwd->pw_expire = (time_t)FUNC2(nvl, "pw_expire");
	pwd->pw_fields = (int)FUNC2(nvl, "pw_fields");

	return (0);
}