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
struct hdmi_spd_infoframe {int version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_INFOFRAME_TYPE_SPD ; 
 int /*<<< orphan*/  HDMI_SPD_INFOFRAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct hdmi_spd_infoframe*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 

int FUNC2(struct hdmi_spd_infoframe *frame,
			    const char *vendor, const char *product)
{
	FUNC0(frame, 0, sizeof(*frame));

	frame->type = HDMI_INFOFRAME_TYPE_SPD;
	frame->version = 1;
	frame->length = HDMI_SPD_INFOFRAME_SIZE;

	FUNC1(frame->vendor, vendor, sizeof(frame->vendor));
	FUNC1(frame->product, product, sizeof(frame->product));

	return 0;
}