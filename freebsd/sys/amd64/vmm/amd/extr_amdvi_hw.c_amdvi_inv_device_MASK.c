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
struct amdvi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdvi_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdvi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdvi_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct amdvi_softc*,int /*<<< orphan*/ ) ; 
 struct amdvi_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct amdvi_softc*) ; 

__attribute__((used)) static void
FUNC6(uint16_t devid)
{
	struct amdvi_softc *softc;

	softc = FUNC4(devid);
	FUNC0(softc, ("softc is NULL"));

	FUNC1(softc, devid);
#ifdef AMDVI_ATS_ENABLE
	if (amdvi_dev_support_iotlb(softc, devid))
		amdvi_cmd_inv_iotlb(softc, devid);
#endif
	FUNC5(softc);
}