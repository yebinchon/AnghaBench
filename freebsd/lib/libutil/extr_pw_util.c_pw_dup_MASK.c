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
struct passwd {char* pw_name; char* pw_passwd; char* pw_class; char* pw_gecos; char* pw_dir; char* pw_shell; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct passwd* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct passwd*,struct passwd const*,int) ; 
 char* FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 

struct passwd *
FUNC4(const struct passwd *pw)
{
	char *dst;
	struct passwd *npw;
	ssize_t len;

	len = sizeof(*npw);
	if (pw->pw_name != NULL)
		len += FUNC3(pw->pw_name) + 1;
	if (pw->pw_passwd != NULL)
		len += FUNC3(pw->pw_passwd) + 1;
	if (pw->pw_class != NULL)
		len += FUNC3(pw->pw_class) + 1;
	if (pw->pw_gecos != NULL)
		len += FUNC3(pw->pw_gecos) + 1;
	if (pw->pw_dir != NULL)
		len += FUNC3(pw->pw_dir) + 1;
	if (pw->pw_shell != NULL)
		len += FUNC3(pw->pw_shell) + 1;
	if ((npw = FUNC0((size_t)len)) == NULL)
		return (NULL);
	FUNC1(npw, pw, sizeof(*npw));
	dst = (char *)npw + sizeof(*npw);
	if (pw->pw_name != NULL) {
		npw->pw_name = dst;
		dst = FUNC2(npw->pw_name, pw->pw_name) + 1;
	}
	if (pw->pw_passwd != NULL) {
		npw->pw_passwd = dst;
		dst = FUNC2(npw->pw_passwd, pw->pw_passwd) + 1;
	}
	if (pw->pw_class != NULL) {
		npw->pw_class = dst;
		dst = FUNC2(npw->pw_class, pw->pw_class) + 1;
	}
	if (pw->pw_gecos != NULL) {
		npw->pw_gecos = dst;
		dst = FUNC2(npw->pw_gecos, pw->pw_gecos) + 1;
	}
	if (pw->pw_dir != NULL) {
		npw->pw_dir = dst;
		dst = FUNC2(npw->pw_dir, pw->pw_dir) + 1;
	}
	if (pw->pw_shell != NULL) {
		npw->pw_shell = dst;
		dst = FUNC2(npw->pw_shell, pw->pw_shell) + 1;
	}
	return (npw);
}