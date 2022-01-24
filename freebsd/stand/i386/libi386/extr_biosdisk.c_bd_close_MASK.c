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
struct open_file {scalar_t__ f_devdata; } ;
struct TYPE_7__ {TYPE_1__* d_dev; } ;
struct disk_devdesc {TYPE_4__ dd; } ;
struct TYPE_6__ {scalar_t__ bd_open; int /*<<< orphan*/ * bd_bcache; } ;
typedef  TYPE_2__ bdinfo_t ;
struct TYPE_5__ {scalar_t__ dv_type; } ;

/* Variables and functions */
 scalar_t__ DEVT_DISK ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (TYPE_4__*) ; 
 int FUNC2 (struct disk_devdesc*) ; 

__attribute__((used)) static int
FUNC3(struct open_file *f)
{
	struct disk_devdesc *dev;
	bdinfo_t *bd;
	int rc = 0;

	dev = (struct disk_devdesc *)f->f_devdata;
	bd = FUNC1(&dev->dd);
	if (bd == NULL)
		return (EIO);

	bd->bd_open--;
	if (bd->bd_open == 0) {
	    FUNC0(bd->bd_bcache);
	    bd->bd_bcache = NULL;
	}
	if (dev->dd.d_dev->dv_type == DEVT_DISK)
		rc = FUNC2(dev);
	return (rc);
}