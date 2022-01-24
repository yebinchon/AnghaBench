#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  slice ;
typedef  int /*<<< orphan*/  partition ;
struct TYPE_5__ {int d_unit; } ;
struct TYPE_4__ {scalar_t__ d_slice; scalar_t__ d_partition; } ;
struct TYPE_6__ {TYPE_2__ dd; TYPE_1__ d_disk; } ;

/* Variables and functions */
 scalar_t__ D_PARTNONE ; 
 scalar_t__ D_PARTWILD ; 
 scalar_t__ D_SLICENONE ; 
 scalar_t__ D_SLICEWILD ; 
 TYPE_3__ currdev ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC3()
{
	char slice[32];
	char partition[32];

	if (currdev.d_disk.d_slice == D_SLICENONE)
		FUNC2(slice, "<none>", sizeof(slice));
	else if (currdev.d_disk.d_slice == D_SLICEWILD)
		FUNC2(slice, "<auto>", sizeof(slice));
	else
		FUNC1(slice, sizeof(slice), "%d", currdev.d_disk.d_slice);

	if (currdev.d_disk.d_partition == D_PARTNONE)
		FUNC2(partition, "<none>", sizeof(partition));
	else if (currdev.d_disk.d_partition == D_PARTWILD)
		FUNC2(partition, "<auto>", sizeof(partition));
	else
		FUNC1(partition, sizeof(partition), "%d",
		    currdev.d_disk.d_partition);

	FUNC0("  Checking unit=%d slice=%s partition=%s...",
	    currdev.dd.d_unit, slice, partition);

}