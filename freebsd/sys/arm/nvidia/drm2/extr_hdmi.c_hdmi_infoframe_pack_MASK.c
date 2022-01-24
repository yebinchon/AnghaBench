#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int type; } ;
union hdmi_infoframe {TYPE_1__ any; int /*<<< orphan*/  vendor; int /*<<< orphan*/  audio; int /*<<< orphan*/  spd; int /*<<< orphan*/  avi; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
#define  HDMI_INFOFRAME_TYPE_AUDIO 131 
#define  HDMI_INFOFRAME_TYPE_AVI 130 
#define  HDMI_INFOFRAME_TYPE_SPD 129 
#define  HDMI_INFOFRAME_TYPE_VENDOR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

ssize_t
FUNC5(union hdmi_infoframe *frame, void *buffer, size_t size)
{
	ssize_t length;

	switch (frame->any.type) {
	case HDMI_INFOFRAME_TYPE_AVI:
		length = FUNC1(&frame->avi, buffer, size);
		break;
	case HDMI_INFOFRAME_TYPE_SPD:
		length = FUNC2(&frame->spd, buffer, size);
		break;
	case HDMI_INFOFRAME_TYPE_AUDIO:
		length = FUNC0(&frame->audio, buffer, size);
		break;
	case HDMI_INFOFRAME_TYPE_VENDOR:
		length = FUNC3(&frame->vendor,
							buffer, size);
		break;
	default:
		FUNC4("Bad infoframe type %d\n", frame->any.type);
		length = -EINVAL;
	}

	return length;
}