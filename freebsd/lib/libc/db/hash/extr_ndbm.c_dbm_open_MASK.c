#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_3__ {int bsize; int ffactor; int nelem; scalar_t__ lorder; int /*<<< orphan*/ * hash; scalar_t__ cachesize; } ;
typedef  TYPE_1__ HASHINFO ;
typedef  int /*<<< orphan*/  DBM ;

/* Variables and functions */
 char const* DBM_SUFFIX ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int MAXPATHLEN ; 
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

extern DBM *
FUNC4(const char *file, int flags, mode_t mode)
{
	HASHINFO info;
	char path[MAXPATHLEN];

	info.bsize = 4096;
	info.ffactor = 40;
	info.nelem = 1;
	info.cachesize = 0;
	info.hash = NULL;
	info.lorder = 0;

	if( FUNC3(file) >= sizeof(path) - FUNC3(DBM_SUFFIX)) {
		errno = ENAMETOOLONG;
		return(NULL);
	}
	(void)FUNC2(path, file);
	(void)FUNC1(path, DBM_SUFFIX);
	return ((DBM *)FUNC0(path, flags, mode, &info, 0));
}