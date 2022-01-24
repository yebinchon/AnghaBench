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
struct TYPE_2__ {int features; int device; int /*<<< orphan*/  command; int /*<<< orphan*/  flags; } ;
struct ccb_ataio {TYPE_1__ cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_READ_PM ; 
 int /*<<< orphan*/  CAM_ATAIO_NEEDRESULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 

void
FUNC1(struct ccb_ataio *ataio, int reg, int port)
{
	FUNC0(&ataio->cmd, sizeof(ataio->cmd));
	ataio->cmd.flags = CAM_ATAIO_NEEDRESULT;
	ataio->cmd.command = ATA_READ_PM;
	ataio->cmd.features = reg;
	ataio->cmd.device = port & 0x0f;
}