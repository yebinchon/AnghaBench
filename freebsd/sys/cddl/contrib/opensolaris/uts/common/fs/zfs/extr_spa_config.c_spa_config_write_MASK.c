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
typedef  int /*<<< orphan*/  vnode_t ;
struct TYPE_3__ {char* scd_path; } ;
typedef  TYPE_1__ spa_config_dirent_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  CRCREAT ; 
 int FCREAT ; 
 int FOFFMAX ; 
 int /*<<< orphan*/  FSYNC ; 
 int FTRUNC ; 
 int FWRITE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  RLIM64_INFINITY ; 
 int /*<<< orphan*/  RMFILE ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  kcred ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(spa_config_dirent_t *dp, nvlist_t *nvl)
{
	size_t buflen;
	char *buf;
	vnode_t *vp;
	int oflags = FWRITE | FTRUNC | FCREAT | FOFFMAX;
	char *temp;
	int err;

	/*
	 * If the nvlist is empty (NULL), then remove the old cachefile.
	 */
	if (nvl == NULL) {
		err = FUNC9(dp->scd_path, UIO_SYSSPACE, RMFILE);
		return (err);
	}

	/*
	 * Pack the configuration into a buffer.
	 */
	buf = FUNC2(nvl, &buflen);
	temp = FUNC5(MAXPATHLEN, KM_SLEEP);

	/*
	 * Write the configuration to disk.  We need to do the traditional
	 * 'write to temporary file, sync, move over original' to make sure we
	 * always have a consistent view of the data.
	 */
	(void) FUNC6(temp, MAXPATHLEN, "%s.tmp", dp->scd_path);

	err = FUNC7(temp, UIO_SYSSPACE, oflags, 0644, &vp, CRCREAT, 0);
	if (err == 0) {
		err = FUNC8(UIO_WRITE, vp, buf, buflen, 0, UIO_SYSSPACE,
		    0, RLIM64_INFINITY, kcred, NULL);
		if (err == 0)
			err = FUNC1(vp, FSYNC, kcred, NULL);
		if (err == 0)
			err = FUNC10(temp, dp->scd_path, UIO_SYSSPACE);
		(void) FUNC0(vp, oflags, 1, 0, kcred, NULL);
	}

	(void) FUNC9(temp, UIO_SYSSPACE, RMFILE);

	FUNC3(buf, buflen);
	FUNC4(temp, MAXPATHLEN);
	return (err);
}