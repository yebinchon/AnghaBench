#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct i386_devdesc {int dummy; } ;
struct TYPE_7__ {TYPE_1__* d_dev; int /*<<< orphan*/  d_unit; } ;
struct disk_devdesc {int d_slice; int d_partition; TYPE_4__ dd; } ;
struct TYPE_6__ {int bd_sectors; int bd_sectorsize; scalar_t__ bd_type; } ;
typedef  TYPE_2__ bdinfo_t ;
struct TYPE_5__ {scalar_t__ dv_type; } ;

/* Variables and functions */
 int ACDMAJOR ; 
 scalar_t__ DEVT_CD ; 
 scalar_t__ DEVT_DISK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 scalar_t__ DT_ATAPI ; 
 int FDMAJOR ; 
 int FUNC1 (int,int,int,int) ; 
 int WDMAJOR ; 
 int WFDMAJOR ; 
 TYPE_2__* FUNC2 (TYPE_4__*) ; 
 int FUNC3 (struct i386_devdesc*) ; 
 int /*<<< orphan*/  FUNC4 (struct disk_devdesc*) ; 
 scalar_t__ FUNC5 (struct disk_devdesc*,int,int) ; 
 char* FUNC6 (char*) ; 
 int FUNC7 (char*,char**,int /*<<< orphan*/ ) ; 

int
FUNC8(struct i386_devdesc *d)
{
	struct disk_devdesc *dev;
	bdinfo_t *bd;
	int	biosdev;
	int	major;
	int	rootdev;
	char	*nip, *cp;
	int	i, unit, slice, partition;

	/* XXX: Assume partition 'a'. */
	slice = 0;
	partition = 0;

	dev = (struct disk_devdesc *)d;
	bd = FUNC2(&dev->dd);
	if (bd == NULL)
		return (-1);

	biosdev = FUNC3(d);
	FUNC0("unit %d BIOS device %d", dev->dd.d_unit, biosdev);
	if (biosdev == -1)			/* not a BIOS device */
		return (-1);

	if (dev->dd.d_dev->dv_type == DEVT_DISK) {
		if (FUNC5(dev, bd->bd_sectors * bd->bd_sectorsize,
		    bd->bd_sectorsize) != 0)	/* oops, not a viable device */
			return (-1);
		else
			FUNC4(dev);
		slice = dev->d_slice + 1;
		partition = dev->d_partition;
	}

	if (biosdev < 0x80) {
		/* floppy (or emulated floppy) or ATAPI device */
		if (bd->bd_type == DT_ATAPI) {
			/* is an ATAPI disk */
			major = WFDMAJOR;
		} else {
			/* is a floppy disk */
			major = FDMAJOR;
		}
	} else {
		/* assume an IDE disk */
		major = WDMAJOR;
	}
	/* default root disk unit number */
	unit = biosdev & 0x7f;

	if (dev->dd.d_dev->dv_type == DEVT_CD) {
		/*
		 * XXX: Need to examine device spec here to figure out if
		 * SCSI or ATAPI.  No idea on how to figure out device number.
		 * All we can really pass to the kernel is what bus and device
		 * on which bus we were booted from, which dev_t isn't well
		 * suited to since those number don't match to unit numbers
		 * very well.  We may just need to engage in a hack where
		 * we pass -C to the boot args if we are the boot device.
		 */
		major = ACDMAJOR;
		unit = 0;       /* XXX */
	}

	/* XXX a better kludge to set the root disk unit number */
	if ((nip = FUNC6("root_disk_unit")) != NULL) {
		i = FUNC7(nip, &cp, 0);
		/* check for parse error */
		if ((cp != nip) && (*cp == 0))
			unit = i;
	}

	rootdev = FUNC1(major, slice, unit, partition);
	FUNC0("dev is 0x%x\n", rootdev);
	return (rootdev);
}