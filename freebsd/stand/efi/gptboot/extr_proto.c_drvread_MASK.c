#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct dsk {scalar_t__ devinfo; } ;
struct TYPE_7__ {TYPE_3__* dev; } ;
typedef  TYPE_2__ dev_info_t ;
typedef  unsigned int daddr_t ;
struct TYPE_8__ {scalar_t__ (* ReadBlocks ) (TYPE_3__*,int /*<<< orphan*/ ,unsigned int,int,void*) ;TYPE_1__* Media; } ;
struct TYPE_6__ {unsigned int BlockSize; int /*<<< orphan*/  MediaId; } ;
typedef  scalar_t__ EFI_STATUS ;
typedef  TYPE_3__ EFI_BLOCK_IO ;

/* Variables and functions */
 unsigned int DEV_BSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ EFI_SUCCESS ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,unsigned int,int,void*) ; 

int
FUNC3(struct dsk *dskp, void *buf, daddr_t lba, unsigned nblk)
{
	int size;
	EFI_STATUS status;
	dev_info_t *devinfo = (dev_info_t *)dskp->devinfo;
	EFI_BLOCK_IO *dev = devinfo->dev;

	lba = lba / (dev->Media->BlockSize / DEV_BSIZE);
	size = nblk * DEV_BSIZE;

	status = dev->ReadBlocks(dev, dev->Media->MediaId, lba, size, buf);
	if (status != EFI_SUCCESS) {
		FUNC0("dskread: failed dev: %p, id: %u, lba: %ju, size: %d, "
		    "status: %lu\n", devinfo->dev,
		    dev->Media->MediaId, (uintmax_t)lba, size,
		    FUNC1(status));
		return (-1);
	}

	return (0);
}