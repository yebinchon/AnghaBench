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
union hdmi_infoframe {int /*<<< orphan*/  vendor; int /*<<< orphan*/  audio; int /*<<< orphan*/  spd; int /*<<< orphan*/  avi; } ;
typedef  int uint8_t ;

/* Variables and functions */
 int EINVAL ; 
#define  HDMI_INFOFRAME_TYPE_AUDIO 131 
#define  HDMI_INFOFRAME_TYPE_AVI 130 
#define  HDMI_INFOFRAME_TYPE_SPD 129 
#define  HDMI_INFOFRAME_TYPE_VENDOR 128 
 int FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*) ; 

int FUNC4(union hdmi_infoframe *frame, void *buffer)
{
	int ret;
	uint8_t *ptr = buffer;

	switch (ptr[0]) {
	case HDMI_INFOFRAME_TYPE_AVI:
		ret = FUNC1(&frame->avi, buffer);
		break;
	case HDMI_INFOFRAME_TYPE_SPD:
		ret = FUNC2(&frame->spd, buffer);
		break;
	case HDMI_INFOFRAME_TYPE_AUDIO:
		ret = FUNC0(&frame->audio, buffer);
		break;
	case HDMI_INFOFRAME_TYPE_VENDOR:
		ret = FUNC3(&frame->vendor, buffer);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}