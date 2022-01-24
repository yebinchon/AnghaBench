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
struct passwd {int pw_fields; int /*<<< orphan*/ * pw_shell; int /*<<< orphan*/ * pw_dir; int /*<<< orphan*/ * pw_gecos; int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_uid; int /*<<< orphan*/ * pw_passwd; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int _PWF_DIR ; 
 int _PWF_GECOS ; 
 int _PWF_GID ; 
 int _PWF_PASSWD ; 
 int _PWF_SHELL ; 
 int _PWF_UID ; 
 int /*<<< orphan*/  FUNC0 (struct passwd*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(struct passwd *src, struct passwd *template)
{

	FUNC0(template);
#ifdef PW_OVERRIDE_PASSWD
	if ((src->pw_fields & _PWF_PASSWD) &&
	    (template->pw_passwd = strdup(src->pw_passwd)) == NULL)
		goto enomem;
#endif
	if (src->pw_fields & _PWF_UID)
		template->pw_uid = src->pw_uid;
	if (src->pw_fields & _PWF_GID)
		template->pw_gid = src->pw_gid;
	if ((src->pw_fields & _PWF_GECOS) &&
	    (template->pw_gecos = FUNC1(src->pw_gecos)) == NULL)
		goto enomem;
	if ((src->pw_fields & _PWF_DIR) &&
	    (template->pw_dir = FUNC1(src->pw_dir)) == NULL)
		goto enomem;
	if ((src->pw_fields & _PWF_SHELL) &&
	    (template->pw_shell = FUNC1(src->pw_shell)) == NULL)
		goto enomem;
	template->pw_fields = src->pw_fields;
	return (0);
enomem:
	FUNC2(LOG_ERR, "getpwent memory allocation failure");
	return (-1);
}