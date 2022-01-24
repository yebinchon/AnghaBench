#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* d_dev; } ;
struct disk_devdesc {TYPE_2__ dd; } ;
typedef  int off_t ;
struct TYPE_3__ {int (* dv_strategy ) (struct disk_devdesc*,int /*<<< orphan*/ ,int,size_t,void*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int DEV_BSIZE ; 
 int /*<<< orphan*/  F_READ ; 
 int FUNC0 (struct disk_devdesc*,int /*<<< orphan*/ ,int,size_t,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(void *vdev, void *readpriv, off_t offbytes,
    void *buf, size_t sizebytes)
{
	struct disk_devdesc *ddev;

	ddev = (struct disk_devdesc *)readpriv;

	return (ddev->dd.d_dev->dv_strategy(ddev, F_READ, offbytes / DEV_BSIZE,
	    sizebytes, buf, NULL));
}