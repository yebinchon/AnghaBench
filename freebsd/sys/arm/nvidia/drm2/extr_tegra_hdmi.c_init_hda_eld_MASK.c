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
typedef  int uint32_t ;
struct TYPE_3__ {int* eld; } ;
struct TYPE_4__ {TYPE_1__ connector; } ;
struct hdmi_softc {TYPE_2__ output; } ;

/* Variables and functions */
 int HDMI_ELD_BUFFER_SIZE ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_SOR_AUDIO_HDA_ELD_BUFWR ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_SOR_AUDIO_HDA_PRESENSE ; 
 int SOR_AUDIO_HDA_PRESENSE_PRESENT ; 
 int SOR_AUDIO_HDA_PRESENSE_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct hdmi_softc*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (int*) ; 

__attribute__((used)) static void
FUNC2(struct hdmi_softc *sc)
{
	size_t size;
	int i ;
	uint32_t val;

	size = FUNC1(sc->output.connector.eld);
	for (i = 0; i < HDMI_ELD_BUFFER_SIZE; i++) {
		val = i << 8;
		if (i < size)
			val |= sc->output.connector.eld[i];
		FUNC0(sc, HDMI_NV_PDISP_SOR_AUDIO_HDA_ELD_BUFWR, val);
	}
	FUNC0(sc,HDMI_NV_PDISP_SOR_AUDIO_HDA_PRESENSE,
	    SOR_AUDIO_HDA_PRESENSE_VALID | SOR_AUDIO_HDA_PRESENSE_PRESENT);
}