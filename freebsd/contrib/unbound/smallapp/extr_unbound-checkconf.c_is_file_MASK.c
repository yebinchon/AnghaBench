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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ EACCES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,struct stat*) ; 

__attribute__((used)) static int
FUNC4(const char* fname)
{
	struct stat buf;
	if(FUNC3(fname, &buf) < 0) {
		if(errno==EACCES) {
			FUNC2("warning: no search permission for one of the directories in path: %s\n", fname);
			return 1;
		}
		FUNC1(fname);
		return 0;
	}
	if(FUNC0(buf.st_mode)) {
		FUNC2("%s is not a file\n", fname);
		return 0;
	}
	return 1;
}