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
typedef  int /*<<< orphan*/  uintmax_t ;
struct passwd {int /*<<< orphan*/  pw_shell; int /*<<< orphan*/  pw_dir; int /*<<< orphan*/  pw_gecos; scalar_t__ pw_expire; scalar_t__ pw_change; int /*<<< orphan*/  pw_class; scalar_t__ pw_gid; scalar_t__ pw_uid; int /*<<< orphan*/  pw_passwd; int /*<<< orphan*/  pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char *
FUNC1(const struct passwd *pw)
{
	char *line;

	FUNC0(&line, "%d:%d:%jd:%jd:%d:%jd:%jd:%d:%d:%d", pw->pw_name,
	    pw->pw_passwd, (uintmax_t)pw->pw_uid, (uintmax_t)pw->pw_gid,
	    pw->pw_class, (uintmax_t)pw->pw_change, (uintmax_t)pw->pw_expire,
	    pw->pw_gecos, pw->pw_dir, pw->pw_shell);
	return (line);
}