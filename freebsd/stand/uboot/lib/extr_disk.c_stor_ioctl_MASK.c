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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_long ;
typedef  int u_int ;
struct open_file {scalar_t__ f_devdata; } ;
struct disk_devdesc {int dummy; } ;
struct TYPE_2__ {int bsize; int blocks; } ;

/* Variables and functions */
#define  DIOCGMEDIASIZE 129 
#define  DIOCGSECTORSIZE 128 
 int ENOTTY ; 
 TYPE_1__ FUNC0 (struct disk_devdesc*) ; 
 int FUNC1 (struct disk_devdesc*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int
FUNC2(struct open_file *f, u_long cmd, void *data)
{
	struct disk_devdesc *dev;
	int rc;

	dev = (struct disk_devdesc *)f->f_devdata;
	rc = FUNC1(dev, cmd, data);
	if (rc != ENOTTY)
		return (rc);

	switch (cmd) {
	case DIOCGSECTORSIZE:
		*(u_int *)data = FUNC0(dev).bsize;
		break;
	case DIOCGMEDIASIZE:
		*(uint64_t *)data = FUNC0(dev).bsize * FUNC0(dev).blocks;
		break;
	default:
		return (ENOTTY);
	}
	return (0);
}