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
typedef  void* u8 ;
struct wpa_channel_info {int /*<<< orphan*/  seg1_idx; int /*<<< orphan*/  sec_channel; int /*<<< orphan*/  chanwidth; int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_WARNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

int FUNC2(struct wpa_channel_info *ci, u8 **argpos)
{
	u8 op_class, channel;
	u8 *pos = *argpos;

	if (FUNC0(ci->frequency, ci->chanwidth,
					  ci->sec_channel,
					  &op_class, &channel) < 0) {
		FUNC1(MSG_WARNING,
			   "Cannot determine operating class and channel for OCI element");
		return -1;
	}

	*pos++ = op_class;
	*pos++ = channel;
	*pos++ = ci->seg1_idx;

	*argpos = pos;
	return 0;
}