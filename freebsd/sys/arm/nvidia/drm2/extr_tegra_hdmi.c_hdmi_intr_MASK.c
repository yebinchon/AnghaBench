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
typedef  int uint32_t ;
struct hdmi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_NV_PDISP_INT_STATUS ; 
 int INT_CODEC_SCRATCH0 ; 
 int FUNC0 (struct hdmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi_softc*) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct hdmi_softc *sc;
	uint32_t status;

	sc = arg;

	/* Confirm interrupt */
	status = FUNC0(sc, HDMI_NV_PDISP_INT_STATUS);
	FUNC1(sc, HDMI_NV_PDISP_INT_STATUS, status);

	/* process audio verb from HDA */
	if (status & INT_CODEC_SCRATCH0)
		FUNC2(sc);
}