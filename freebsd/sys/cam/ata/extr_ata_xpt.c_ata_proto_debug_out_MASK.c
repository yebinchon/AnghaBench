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
struct TYPE_4__ {int /*<<< orphan*/  cmd; } ;
struct TYPE_3__ {scalar_t__ func_code; int /*<<< orphan*/  path; } ;
union ccb {TYPE_2__ ataio; TYPE_1__ ccb_h; } ;
struct ata_cmd {int dummy; } ;
typedef  int /*<<< orphan*/  cdb_str ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_CDB ; 
 scalar_t__ XPT_ATA_IO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(union ccb *ccb)
{
	char cdb_str[(sizeof(struct ata_cmd) * 3) + 1];

	if (ccb->ccb_h.func_code != XPT_ATA_IO)
		return;

	FUNC0(ccb->ccb_h.path,
	    CAM_DEBUG_CDB,("%s. ACB: %s\n", FUNC2(&ccb->ataio.cmd),
		FUNC1(&ccb->ataio.cmd, cdb_str, sizeof(cdb_str))));
}