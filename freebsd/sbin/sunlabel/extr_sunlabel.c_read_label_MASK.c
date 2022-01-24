#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct sun_disklabel {int sl_rpm; int sl_pcylinders; int sl_interleave; int sl_ncylinders; int sl_acylinders; int sl_nsectors; int sl_ntracks; int /*<<< orphan*/  sl_text; TYPE_1__* sl_part; scalar_t__ sl_sparespercyl; } ;
typedef  int /*<<< orphan*/  path ;
typedef  long off_t ;
typedef  int intmax_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int sdkp_nsectors; scalar_t__ sdkp_cyloffset; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGFWHEADS ; 
 int /*<<< orphan*/  DIOCGFWSECTORS ; 
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 int /*<<< orphan*/  DIOCGSECTORSIZE ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 size_t SUN_RAWPART ; 
 int SUN_SIZE ; 
 char* _PATH_DEV ; 
 int /*<<< orphan*/  FUNC0 (struct sun_disklabel*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int*) ; 
 int mediasize ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char*,int) ; 
 int sectorsize ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int,int,int,int) ; 
 int FUNC8 (char*,struct sun_disklabel*) ; 

__attribute__((used)) static void
FUNC9(struct sun_disklabel *sl, const char *disk)
{
	char path[MAXPATHLEN];
	uint32_t fwsectors;
	uint32_t fwheads;
	char buf[SUN_SIZE];
	int fd, error;

	FUNC6(path, sizeof(path), "%s%s", _PATH_DEV, disk);
	if ((fd = FUNC4(path, O_RDONLY)) < 0)
		FUNC2(1, "open %s", path);
	if (FUNC5(fd, buf, sizeof(buf)) != sizeof(buf))
		FUNC2(1, "read");
	error = FUNC8(buf, sl);
	if (FUNC3(fd, DIOCGMEDIASIZE, &mediasize) != 0)
		if (error)
			FUNC2(1, "%s: ioctl(DIOCGMEDIASIZE) failed", disk);
	if (FUNC3(fd, DIOCGSECTORSIZE, &sectorsize) != 0) {
		if (error)
			FUNC2(1, "%s: DIOCGSECTORSIZE failed", disk);
		else
			sectorsize = 512;
	}
	if (error) {
		FUNC0(sl, sizeof(*sl));
		if (FUNC3(fd, DIOCGFWSECTORS, &fwsectors) != 0)
			fwsectors = 63;
		if (FUNC3(fd, DIOCGFWHEADS, &fwheads) != 0) {
			if (mediasize <= 63 * 1024 * sectorsize)
				fwheads = 1;
			else if (mediasize <= 63 * 16 * 1024 * sectorsize)
				fwheads = 16;
			else
				fwheads = 255;
		}
		sl->sl_rpm = 3600;
		sl->sl_pcylinders = mediasize / (fwsectors * fwheads *
		    sectorsize);
		sl->sl_sparespercyl = 0;
		sl->sl_interleave = 1;
		sl->sl_ncylinders = sl->sl_pcylinders - 2;
		sl->sl_acylinders = 2;
		sl->sl_nsectors = fwsectors;
		sl->sl_ntracks = fwheads;
		sl->sl_part[SUN_RAWPART].sdkp_cyloffset = 0;
		sl->sl_part[SUN_RAWPART].sdkp_nsectors = sl->sl_ncylinders *
		    sl->sl_ntracks * sl->sl_nsectors;
		if (mediasize > (off_t)4999L * 1024L * 1024L) {
			FUNC7(sl->sl_text,
			    "FreeBSD%jdG cyl %u alt %u hd %u sec %u",
			    (intmax_t)(mediasize + 512 * 1024 * 1024) /
			        (1024 * 1024 * 1024),
			    sl->sl_ncylinders, sl->sl_acylinders,
			    sl->sl_ntracks, sl->sl_nsectors);
		} else {
			FUNC7(sl->sl_text,
			    "FreeBSD%jdM cyl %u alt %u hd %u sec %u",
			    (intmax_t)(mediasize + 512 * 1024) / (1024 * 1024),
			    sl->sl_ncylinders, sl->sl_acylinders,
			    sl->sl_ntracks, sl->sl_nsectors);
		}
	}
	FUNC1(fd);
}