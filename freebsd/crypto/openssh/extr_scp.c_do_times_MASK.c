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
struct stat {scalar_t__ st_mtime; scalar_t__ st_atime; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  vwrite ; 

__attribute__((used)) static int
FUNC5(int fd, int verb, const struct stat *sb)
{
	/* strlen(2^64) == 20; strlen(10^6) == 7 */
	char buf[(20 + 7 + 2) * 2 + 2];

	(void)FUNC3(buf, sizeof(buf), "T%llu 0 %llu 0\n",
	    (unsigned long long) (sb->st_mtime < 0 ? 0 : sb->st_mtime),
	    (unsigned long long) (sb->st_atime < 0 ? 0 : sb->st_atime));
	if (verb) {
		FUNC1(stderr, "File mtime %lld atime %lld\n",
		    (long long)sb->st_mtime, (long long)sb->st_atime);
		FUNC1(stderr, "Sending file timestamps: %s", buf);
	}
	(void) FUNC0(vwrite, fd, buf, FUNC4(buf));
	return (FUNC2());
}