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
struct stat {int st_size; int /*<<< orphan*/  st_mode; } ;
struct hast_resource {char* hr_localpath; int hr_localfd; int hr_local_mediasize; int hr_local_sectorsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 int /*<<< orphan*/  DIOCGSECTORSIZE ; 
 int /*<<< orphan*/  EFTYPE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (int,struct stat*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

int
FUNC8(struct hast_resource *res, bool dowrite)
{
	struct stat sb;

	FUNC0(res->hr_localpath != NULL &&
	    res->hr_localpath[0] != '\0');

	if (res->hr_localfd == -1) {
		res->hr_localfd = FUNC5(res->hr_localpath,
		    dowrite ? O_RDWR : O_RDONLY);
		if (res->hr_localfd == -1) {
			FUNC6(LOG_ERR, "Unable to open %s",
			    res->hr_localpath);
			return (-1);
		}
	}
	if (FUNC3(res->hr_localfd, &sb) == -1) {
		FUNC6(LOG_ERR, "Unable to stat %s", res->hr_localpath);
		return (-1);
	}
	if (FUNC1(sb.st_mode)) {
		/*
		 * If this is character device, it is most likely GEOM provider.
		 */
		if (FUNC4(res->hr_localfd, DIOCGMEDIASIZE,
		    &res->hr_local_mediasize) == -1) {
			FUNC6(LOG_ERR,
			    "Unable obtain provider %s mediasize",
			    res->hr_localpath);
			return (-1);
		}
		if (FUNC4(res->hr_localfd, DIOCGSECTORSIZE,
		    &res->hr_local_sectorsize) == -1) {
			FUNC6(LOG_ERR,
			    "Unable obtain provider %s sectorsize",
			    res->hr_localpath);
			return (-1);
		}
	} else if (FUNC2(sb.st_mode)) {
		/*
		 * We also support regular files for which we hardcode
		 * sector size of 512 bytes.
		 */
		res->hr_local_mediasize = sb.st_size;
		res->hr_local_sectorsize = 512;
	} else {
		/*
		 * We support no other file types.
		 */
		FUNC7("%s is neither GEOM provider nor regular file.",
		    res->hr_localpath);
		errno = EFTYPE;
		return (-1);
	}
	return (0);
}