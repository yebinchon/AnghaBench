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
struct hdmi_spd_infoframe {int sdi; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HDMI_INFOFRAME_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HDMI_INFOFRAME_TYPE_SPD ; 
 int HDMI_SPD_INFOFRAME_SIZE ; 
 int /*<<< orphan*/  SPD ; 
 scalar_t__ FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hdmi_spd_infoframe*,int*,int*) ; 

__attribute__((used)) static int FUNC3(struct hdmi_spd_infoframe *frame,
				     void *buffer)
{
	uint8_t *ptr = buffer;
	int ret;

	if (ptr[0] != HDMI_INFOFRAME_TYPE_SPD ||
	    ptr[1] != 1 ||
	    ptr[2] != HDMI_SPD_INFOFRAME_SIZE) {
		return -EINVAL;
	}

	if (FUNC1(buffer, FUNC0(SPD)) != 0)
		return -EINVAL;

	ptr += HDMI_INFOFRAME_HEADER_SIZE;

	ret = FUNC2(frame, ptr, ptr + 8);
	if (ret)
		return ret;

	frame->sdi = ptr[24];

	return 0;
}