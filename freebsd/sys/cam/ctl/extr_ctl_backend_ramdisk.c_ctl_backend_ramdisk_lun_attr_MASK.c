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
struct TYPE_2__ {int blocksize; } ;
struct ctl_be_ramdisk_lun {int cap_bytes; int cap_used; int /*<<< orphan*/  page_lock; TYPE_1__ cbe_lun; } ;

/* Variables and functions */
 int UINT64_MAX ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint64_t
FUNC3(void *arg, const char *attrname)
{
	struct ctl_be_ramdisk_lun *be_lun = arg;
	uint64_t		val;

	val = UINT64_MAX;
	if (be_lun->cap_bytes == 0)
		return (val);
	FUNC1(&be_lun->page_lock);
	if (FUNC0(attrname, "blocksused") == 0) {
		val = be_lun->cap_used / be_lun->cbe_lun.blocksize;
	} else if (FUNC0(attrname, "blocksavail") == 0) {
		val = (be_lun->cap_bytes - be_lun->cap_used) /
		    be_lun->cbe_lun.blocksize;
	}
	FUNC2(&be_lun->page_lock);
	return (val);
}