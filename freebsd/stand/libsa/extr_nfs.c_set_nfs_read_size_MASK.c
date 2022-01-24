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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int NFSREAD_MAX_SIZE ; 
 int NFSREAD_MIN_SIZE ; 
 scalar_t__ errno ; 
 char* FUNC0 (char*) ; 
 int nfs_read_size ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 scalar_t__ FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void)
{
	char *env, *end;
	char buf[10];

	if ((env = FUNC0("nfs.read_size")) != NULL) {
		errno = 0;
		nfs_read_size = (int)FUNC4(env, &end, 0);
		if (errno != 0 || *env == '\0' || *end != '\0') {
			FUNC1("%s: bad value: \"%s\", defaulting to %d\n",
			    "nfs.read_size", env, NFSREAD_MIN_SIZE);
			nfs_read_size = NFSREAD_MIN_SIZE;
		}
	}
	if (nfs_read_size < NFSREAD_MIN_SIZE) {
		FUNC1("%s: bad value: \"%d\", defaulting to %d\n",
		    "nfs.read_size", nfs_read_size, NFSREAD_MIN_SIZE);
		nfs_read_size = NFSREAD_MIN_SIZE;
	}
	if (nfs_read_size > NFSREAD_MAX_SIZE) {
		FUNC1("%s: bad value: \"%d\", defaulting to %d\n",
		    "nfs.read_size", nfs_read_size, NFSREAD_MIN_SIZE);
		nfs_read_size = NFSREAD_MAX_SIZE;
	}
	FUNC3(buf, sizeof (buf), "%d", nfs_read_size);
	FUNC2("nfs.read_size", buf, 1);
}