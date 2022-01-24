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
struct stat {int dummy; } ;
struct passwd {int /*<<< orphan*/  pw_uid; int /*<<< orphan*/  pw_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int,struct stat*) ; 
 int FUNC1 (char const*,struct stat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,char const*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(int fd, const char *file, struct passwd *pw,
    char *err, size_t errlen)
{
	struct stat st;

	/* check the open file to avoid races */
	if (FUNC0(fd, &st) < 0) {
		FUNC2(err, errlen, "cannot stat file %s: %s",
		    file, FUNC3(errno));
		return -1;
	}
	return FUNC1(file, &st, pw->pw_dir, pw->pw_uid, err, errlen);
}