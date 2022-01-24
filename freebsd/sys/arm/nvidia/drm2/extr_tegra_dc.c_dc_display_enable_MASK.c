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
struct dc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_MODE_C_DISPLAY ; 
 int /*<<< orphan*/  CTRL_MODE_STOP ; 
 int /*<<< orphan*/  DC_CMD_DISPLAY_COMMAND ; 
 int /*<<< orphan*/  DC_CMD_STATE_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERAL_ACT_REQ ; 
 int /*<<< orphan*/  GENERAL_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dc_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev, bool enable)
{
	struct dc_softc *sc;
	uint32_t val;

	sc = FUNC2(dev);

	/* Set display mode */
	val = enable ? CTRL_MODE_C_DISPLAY: CTRL_MODE_STOP;
	FUNC1(sc, DC_CMD_DISPLAY_COMMAND, FUNC0(val));

	/* and commit it*/
	FUNC1(sc, DC_CMD_STATE_CONTROL, GENERAL_UPDATE);
	FUNC1(sc, DC_CMD_STATE_CONTROL, GENERAL_ACT_REQ);
}