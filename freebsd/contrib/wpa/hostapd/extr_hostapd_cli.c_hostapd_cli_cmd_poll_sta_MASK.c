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
 int FUNC0 (struct wpa_ctrl*,char*,int,int,char**) ; 

__attribute__((used)) static int FUNC1(struct wpa_ctrl *ctrl, int argc,
				    char *argv[])
{
	return FUNC0(ctrl, "POLL_STA", 1, argc, argv);
}