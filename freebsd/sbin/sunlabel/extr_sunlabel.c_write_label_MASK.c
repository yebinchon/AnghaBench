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
struct sun_disklabel {int sl_ntracks; int sl_nsectors; TYPE_1__* sl_part; int /*<<< orphan*/  sl_magic; } ;
struct gctl_req {int dummy; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  boot ;
struct TYPE_2__ {scalar_t__ sdkp_nsectors; int sdkp_cyloffset; } ;

/* Variables and functions */
 scalar_t__ Bflag ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SUN_BOOTSIZE ; 
 int /*<<< orphan*/  SUN_DKMAGIC ; 
 int SUN_NPART ; 
 int SUN_SIZE ; 
 char* _PATH_DEV ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (struct sun_disklabel*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gctl_req*) ; 
 struct gctl_req* FUNC7 () ; 
 char* FUNC8 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC9 (struct gctl_req*,char*,int,char const*) ; 
 scalar_t__ FUNC10 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ nflag ; 
 int FUNC11 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sun_disklabel*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char*,char const*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC15 (char*,struct sun_disklabel*) ; 
 int FUNC16 (int,char*,int) ; 

__attribute__((used)) static void
FUNC17(struct sun_disklabel *sl, const char *disk, const char *bootpath)
{
	char path[MAXPATHLEN];
	char boot[SUN_BOOTSIZE];
	char buf[SUN_SIZE];
	const char *errstr;
	off_t off;
	int bfd;
	int fd;
	int i;
	struct gctl_req *grq;

	sl->sl_magic = SUN_DKMAGIC;

	if (FUNC1(sl) != 0)
		FUNC4(1, "invalid label");

	FUNC0(buf, sizeof(buf));
	FUNC15(buf, sl);

	if (nflag) {
		FUNC12(sl, disk, stdout);
		return;
	}
	if (Bflag) {
		if ((bfd = FUNC11(bootpath, O_RDONLY)) < 0)
			FUNC3(1, "open %s", bootpath);
		i = FUNC13(bfd, boot, sizeof(boot));
		if (i < 0)
			FUNC3(1, "read");
		else if (i != sizeof (boot))
			FUNC4(1, "read wrong size boot code (%d)", i);
		FUNC2(bfd);
	}
	FUNC14(path, sizeof(path), "%s%s", _PATH_DEV, disk);
	fd = FUNC11(path, O_RDWR);
	if (fd < 0) {
		grq = FUNC7();
		FUNC9(grq, "verb", -1, "write label");
		FUNC9(grq, "class", -1, "SUN");
		FUNC9(grq, "geom", -1, disk);
		FUNC9(grq, "label", sizeof buf, buf);
		errstr = FUNC8(grq);
		if (errstr != NULL)
			FUNC4(1, "%s", errstr);
		FUNC6(grq);
		if (Bflag) {
			grq = FUNC7();
			FUNC9(grq, "verb", -1, "write bootcode");
			FUNC9(grq, "class", -1, "SUN");
			FUNC9(grq, "geom", -1, disk);
			FUNC9(grq, "bootcode", sizeof boot, boot);
			errstr = FUNC8(grq);
			if (errstr != NULL)
				FUNC4(1, "%s", errstr);
			FUNC6(grq);
		}
	} else {
		if (FUNC10(fd, 0, SEEK_SET) < 0)
			FUNC3(1, "lseek");
		if (FUNC16(fd, buf, sizeof(buf)) != sizeof(buf))
			FUNC3 (1, "write");
		if (Bflag) {
			for (i = 0; i < SUN_NPART; i++) {
				if (sl->sl_part[i].sdkp_nsectors == 0)
					continue;
				off = sl->sl_part[i].sdkp_cyloffset *
				    sl->sl_ntracks * sl->sl_nsectors * 512;
				/*
				 * Ignore first SUN_SIZE bytes of boot code to
				 * avoid overwriting the label.
				 */
				if (FUNC10(fd, off + SUN_SIZE, SEEK_SET) < 0)
					FUNC3(1, "lseek");
				if (FUNC16(fd, boot + SUN_SIZE,
				    sizeof(boot) - SUN_SIZE) !=
				    sizeof(boot) - SUN_SIZE)
					FUNC3(1, "write");
			}
		}
		FUNC2(fd);
	}
	FUNC5(0);
}