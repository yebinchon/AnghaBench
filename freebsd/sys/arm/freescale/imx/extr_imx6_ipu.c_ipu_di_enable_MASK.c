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
struct ipu_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_GEN_DI0_CNTR_RELEASE ; 
 int /*<<< orphan*/  DISP_GEN_DI1_CNTR_RELEASE ; 
 int /*<<< orphan*/  IPU_DISP_GEN ; 
 int /*<<< orphan*/  FUNC0 (struct ipu_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ipu_softc *sc, int di)
{
	uint32_t flag, reg;

	flag = di ? DISP_GEN_DI1_CNTR_RELEASE : DISP_GEN_DI0_CNTR_RELEASE;
	reg = FUNC0(sc, IPU_DISP_GEN);
	reg |= flag;
	FUNC1(sc, IPU_DISP_GEN, reg);
}