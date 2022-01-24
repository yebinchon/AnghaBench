#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int d_unit; TYPE_1__* d_dev; } ;
struct disk_devdesc {TYPE_2__ dd; } ;
typedef  int daddr_t ;
typedef  int caddr_t ;
struct TYPE_10__ {int bd_flags; int /*<<< orphan*/  bd_unit; } ;
typedef  TYPE_3__ bdinfo_t ;
struct TYPE_8__ {char* dv_name; } ;

/* Variables and functions */
 int BD_MODEEDD ; 
 int BD_NO_MEDIA ; 
 int BD_RD ; 
 int BD_WR ; 
 int FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*,int,int,int,int) ; 
 int FUNC2 (TYPE_3__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,int,int,int,int,int) ; 

__attribute__((used)) static int
FUNC6(struct disk_devdesc *dev, bdinfo_t *bd, daddr_t dblk, int blks,
    caddr_t dest, int dowrite)
{
	int result, retry;

	/* Just in case some idiot actually tries to read/write -1 blocks... */
	if (blks < 0)
		return (-1);

	/*
	 * Workaround for a problem with some HP ProLiant BIOS failing to work
	 * out the boot disk after installation. hrs and kuriyama discovered
	 * this problem with an HP ProLiant DL320e Gen 8 with a 3TB HDD, and
	 * discovered that an int13h call seems to cause a buffer overrun in
	 * the bios. The problem is alleviated by doing an extra read before
	 * the buggy read. It is not immediately known whether other models
	 * are similarly affected.
	 * Loop retrying the operation a couple of times.  The BIOS
	 * may also retry.
	 */
	if (dowrite == BD_RD && dblk >= 0x100000000)
		FUNC3(bd);
	for (retry = 0; retry < 3; retry++) {
		if (bd->bd_flags & BD_MODEEDD)
			result = FUNC2(bd, dblk, blks, dest, dowrite);
		else
			result = FUNC1(bd, dblk, blks, dest, dowrite);

		if (result == 0) {
			if (bd->bd_flags & BD_NO_MEDIA)
				bd->bd_flags &= ~BD_NO_MEDIA;
			break;
		}

		FUNC4(bd->bd_unit);

		/*
		 * Error codes:
		 * 20h	controller failure
		 * 31h	no media in drive (IBM/MS INT 13 extensions)
		 * 80h	no media in drive, VMWare (Fusion)
		 * There is no reason to repeat the IO with errors above.
		 */
		if (result == 0x20 || result == 0x31 || result == 0x80) {
			bd->bd_flags |= BD_NO_MEDIA;
			break;
		}
	}

	if (result != 0 && (bd->bd_flags & BD_NO_MEDIA) == 0) {
		if (dowrite == BD_WR) {
			FUNC5("%s%d: Write %d sector(s) from %p (0x%x) "
			    "to %lld: 0x%x\n", dev->dd.d_dev->dv_name,
			    dev->dd.d_unit, blks, dest, FUNC0(dest), dblk,
			    result);
		} else {
			FUNC5("%s%d: Read %d sector(s) from %lld to %p "
			    "(0x%x): 0x%x\n", dev->dd.d_dev->dv_name,
			    dev->dd.d_unit, blks, dblk, dest, FUNC0(dest),
			    result);
		}
	}

	return (result);
}