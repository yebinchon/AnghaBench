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
typedef  int /*<<< orphan*/  uint8_t ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SYMLINK_NOFOLLOW ; 
 int /*<<< orphan*/  DT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,char const*,struct stat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static uint8_t
FUNC5(DIR *dirfp, const char *filename)
{
	struct stat sb;
	int dfd;

	FUNC1(dirfp != NULL);

	dfd = FUNC2(dirfp);
	FUNC1(dfd >= 0);
	if (FUNC3(dfd, filename, &sb, AT_SYMLINK_NOFOLLOW) == -1) {
		FUNC4(LOG_ERR, "Unable to stat \"%s\"", filename);
		return (DT_UNKNOWN);
	}
	return (FUNC0(sb.st_mode));
}