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
struct wpa_ctrl {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct wpa_ctrl*,char const*,int /*<<< orphan*/ *,char*,size_t) ; 

int FUNC1(struct wpa_ctrl *mon,
		      const char *event, char *buf, size_t buf_size)
{
	return FUNC0(mon, event, NULL, buf, buf_size);
}