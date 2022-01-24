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
struct TYPE_2__ {int PartitionNumber; } ;
typedef  TYPE_1__ HARDDRIVE_DEVICE_PATH ;
typedef  int /*<<< orphan*/  EFI_DEVICE_PATH ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MEDIA_HARDDRIVE_DP ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(EFI_DEVICE_PATH *devpath)
{
	EFI_DEVICE_PATH *md;
	HARDDRIVE_DEVICE_PATH *hd;

	md = FUNC1(devpath);
	if (md == NULL)
		return (-1);
	if (FUNC0(md) != MEDIA_HARDDRIVE_DP)
		return (-1);
	hd = (HARDDRIVE_DEVICE_PATH *)md;
	return (hd->PartitionNumber);
}