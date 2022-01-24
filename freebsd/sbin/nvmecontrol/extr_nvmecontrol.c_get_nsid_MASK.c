#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct nvme_get_nsid {int /*<<< orphan*/  nsid; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_GET_NSID ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct nvme_get_nsid*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int) ; 

void
FUNC3(int fd, char **ctrlr_str, uint32_t *nsid)
{
	struct nvme_get_nsid gnsid;

	if (FUNC1(fd, NVME_GET_NSID, &gnsid) < 0)
		FUNC0(1, "NVME_GET_NSID ioctl failed");
	if (ctrlr_str != NULL)
		*ctrlr_str = FUNC2(gnsid.cdev, sizeof(gnsid.cdev));
	if (nsid != NULL)
		*nsid = gnsid.nsid;
}