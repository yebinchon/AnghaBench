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
struct sshbuf {int dummy; } ;
struct passwd {char* pw_name; char* pw_gecos; char* pw_class; char* pw_dir; char* pw_shell; int /*<<< orphan*/  pw_fields; int /*<<< orphan*/  pw_expire; int /*<<< orphan*/  pw_change; int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_uid; } ;

/* Variables and functions */
 int FUNC0 (struct sshbuf*,char*) ; 
 int FUNC1 (struct sshbuf*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sshbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sshbuf*,int) ; 

int
FUNC4(struct sshbuf *buf, const struct passwd *pwent)
{
	int r;

	/*
	 * We never send pointer values of struct passwd.
	 * It is safe from wild pointer even if a new pointer member is added.
	 */

	if ((r = FUNC3(buf, sizeof(*pwent)) != 0) ||
	    (r = FUNC0(buf, pwent->pw_name)) != 0 ||
	    (r = FUNC0(buf, "*")) != 0 ||
	    (r = FUNC2(buf, pwent->pw_uid)) != 0 ||
	    (r = FUNC2(buf, pwent->pw_gid)) != 0 ||
#ifdef HAVE_STRUCT_PASSWD_PW_CHANGE
	    (r = sshbuf_put_time(buf, pwent->pw_change)) != 0 ||
#endif
#ifdef HAVE_STRUCT_PASSWD_PW_GECOS
	    (r = sshbuf_put_cstring(buf, pwent->pw_gecos)) != 0 ||
#endif
#ifdef HAVE_STRUCT_PASSWD_PW_CLASS
	    (r = sshbuf_put_cstring(buf, pwent->pw_class)) != 0 ||
#endif
	    (r = FUNC0(buf, pwent->pw_dir)) != 0 ||
	    (r = FUNC0(buf, pwent->pw_shell)) != 0 ||
#ifdef HAVE_STRUCT_PASSWD_PW_EXPIRE
	    (r = sshbuf_put_time(buf, pwent->pw_expire)) != 0 ||
#endif
	    (r = FUNC2(buf, pwent->pw_fields)) != 0) {
		return r;
	}
	return 0;
}