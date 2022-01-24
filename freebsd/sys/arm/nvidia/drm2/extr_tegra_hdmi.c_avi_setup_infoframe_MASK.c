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
typedef  int uint8_t ;
struct hdmi_softc {int /*<<< orphan*/  dev; } ;
struct hdmi_avi_infoframe {int dummy; } ;
struct drm_display_mode {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int AVI_INFOFRAME_CTRL_ENABLE ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_CTRL ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_HEADER ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK0_HIGH ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK0_LOW ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK1_HIGH ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK1_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct hdmi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct hdmi_avi_infoframe*,struct drm_display_mode*) ; 
 scalar_t__ FUNC3 (struct hdmi_avi_infoframe*,int*,int) ; 

__attribute__((used)) static void
FUNC4(struct hdmi_softc *sc, struct drm_display_mode *mode)
{
	struct hdmi_avi_infoframe frame;
	uint8_t buf[17], *hdr, *pb;;
	ssize_t rv;

	rv = FUNC2(&frame, mode);
	if (rv < 0) {
		FUNC1(sc->dev, "Cannot setup AVI infoframe: %zd\n", rv);
		return;
	}
	rv = FUNC3(&frame, buf, sizeof(buf));
	if (rv < 0) {
		FUNC1(sc->dev, "Cannot pack AVI infoframe: %zd\n", rv);
		return;
	}
	hdr = buf + 0;
	pb = buf + 3;
	FUNC0(sc, HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_HEADER,
	    (hdr[2] << 16) | (hdr[1] << 8) | (hdr[0] << 0));
	FUNC0(sc, HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK0_LOW,
	    (pb[3] << 24) |(pb[2] << 16) | (pb[1] << 8) | (pb[0] << 0));
	FUNC0(sc, HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK0_HIGH,
	    (pb[6] << 16) | (pb[5] << 8) | (pb[4] << 0));
	FUNC0(sc, HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK1_LOW,
	    (pb[10] << 24) |(pb[9] << 16) | (pb[8] << 8) | (pb[7] << 0));
	FUNC0(sc, HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK1_HIGH,
	    (pb[13] << 16) | (pb[12] << 8) | (pb[11] << 0));

	FUNC0(sc, HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_CTRL,
	   AVI_INFOFRAME_CTRL_ENABLE);
}