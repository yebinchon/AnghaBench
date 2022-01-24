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
 int /*<<< orphan*/  ctrl_conn ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ event_handler_registered ; 
 scalar_t__ interactive ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_ctrl*) ; 

__attribute__((used)) static void FUNC2(struct wpa_ctrl *ctrl)
{
	if (!ctrl_conn)
		return;
	if (interactive && event_handler_registered) {
		FUNC0(FUNC1(ctrl));
		event_handler_registered = 0;
	}
}