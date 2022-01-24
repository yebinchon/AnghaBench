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
struct hdmi_softc {int /*<<< orphan*/  hdmi_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_INFOFRAME_CTRL_ENABLE ; 
 int /*<<< orphan*/  GENERIC_CTRL_AUDIO ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_CTRL ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_HDMI_GENERIC_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct hdmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi_softc*) ; 

__attribute__((used)) static void
FUNC3(struct hdmi_softc *sc) {
	uint32_t val;

	if (!sc->hdmi_mode)
		FUNC2(sc);

	/* Enable audio infoframes */
	val = FUNC0(sc,  HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_CTRL);
	val |= AUDIO_INFOFRAME_CTRL_ENABLE;
	FUNC1(sc, HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_CTRL, val);

	/* Enable audio */
	val = FUNC0(sc,  HDMI_NV_PDISP_HDMI_GENERIC_CTRL);
	val |= GENERIC_CTRL_AUDIO;
	FUNC1(sc, HDMI_NV_PDISP_HDMI_GENERIC_CTRL, val);
}