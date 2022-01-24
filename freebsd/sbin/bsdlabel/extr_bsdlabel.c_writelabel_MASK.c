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
struct disklabel {int d_npartitions; int d_secsize; TYPE_1__* d_partitions; scalar_t__ d_checksum; void* d_magic2; void* d_magic; } ;
struct TYPE_2__ {int /*<<< orphan*/  p_offset; scalar_t__ p_size; } ;

/* Variables and functions */
 void* DISKMAGIC ; 
 int /*<<< orphan*/  O_RDWR ; 
 scalar_t__ bbsize ; 
 scalar_t__ bootarea ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct disklabel*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ disable_write ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct disklabel*) ; 
 int errno ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ installboot ; 
 scalar_t__ is_file ; 
 struct disklabel lab ; 
 scalar_t__ labeloffset ; 
 int labelsoffset ; 
 scalar_t__ lba_offset ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  specname ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC11(void)
{
	int i, fd, serrno;
	struct disklabel *lp = &lab;

	if (disable_write) {
		FUNC9("write to disk label suppressed - label was as follows:");
		FUNC2(stdout, NULL);
		return (0);
	}

	lp->d_magic = DISKMAGIC;
	lp->d_magic2 = DISKMAGIC;
	lp->d_checksum = 0;
	lp->d_checksum = FUNC3(lp);
	if (installboot)
		FUNC6();
	for (i = 0; i < lab.d_npartitions; i++)
		if (lab.d_partitions[i].p_size)
			lab.d_partitions[i].p_offset += lba_offset;
	FUNC0(bootarea + labeloffset + labelsoffset * lab.d_secsize,
	    lp);

	fd = FUNC5(specname, O_RDWR);
	if (fd < 0) {
		if (is_file) {
			FUNC7("cannot open file %s for writing label", specname);
			return(1);
		} else
			serrno = errno;

		if (FUNC4("PART") != 0) {
			/*
			 * Since we weren't able open provider for
			 * writing, then recommend user to use gpart(8).
			 */
			FUNC8(serrno,
			    "cannot open provider %s for writing label",
			    specname);
			FUNC9("Try to use gpart(8).");
			return (1);
		}

		FUNC8(serrno, "%s", specname);
		return (1);
	} else {
		if (FUNC10(fd, bootarea, bbsize) != bbsize) {
			FUNC7("write %s", specname);
			FUNC1 (fd);
			return (1);
		}
		FUNC1 (fd);
	}
	return (0);
}