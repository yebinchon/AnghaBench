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
typedef  int /*<<< orphan*/  uint16_t ;
struct amdvi_softc {int /*<<< orphan*/  dev; } ;
struct amdvi_cmd {int /*<<< orphan*/  word0; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDVI_INVD_DTE_OPCODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct amdvi_cmd* FUNC1 (struct amdvi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdvi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct amdvi_softc *softc, uint16_t devid)
{
	struct amdvi_cmd *cmd;

	cmd = FUNC1(softc);
	FUNC0(cmd != NULL, ("Cmd is NULL"));
	cmd->opcode = AMDVI_INVD_DTE_OPCODE;
	cmd->word0 = devid;
	FUNC2(softc);
#ifdef AMDVI_DEBUG_CMD
	device_printf(softc->dev, "Invalidated DTE:0x%x\n", devid);
#endif
}