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
typedef  int /*<<< orphan*/  tmpbuf ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 char* SRVURL ; 
 char* ZFSDEV ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*,char const*) ; 
 int FUNC2 (char*) ; 

int
FUNC3(const atf_tc_t *tc, void *buf, const char *path, int flags)
{
	char tmpbuf[128];
	int error;

	/* set up the hijack env for running zpool */
	FUNC0("RUMP_SERVER", SRVURL, 1);
	FUNC1(tmpbuf, sizeof(tmpbuf)-1, "blanket=/dev/zfs:%s:%s",
	    ZFSDEV, path);
	FUNC0("RUMPHIJACK", tmpbuf, 1);
	FUNC0("LD_PRELOAD", "/usr/lib/librumphijack.so", 1);

	while (*path == '/')
		path++;

	/* run zpool create */
	FUNC1(tmpbuf, sizeof(tmpbuf)-1, "zpool create %s %s",
	    path, ZFSDEV);
	if ((error = FUNC2(tmpbuf)) != 0) {
		errno = error;
		return -1;
	}

	return 0;
}