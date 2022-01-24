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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*) ; 
 int FUNC1 (struct wpa_ctrl*,char*) ; 

__attribute__((used)) static int FUNC2(struct wpa_ctrl *ctrl, int argc, char *argv[])
{
	if (argc > 0) {
		char buf[100];
		FUNC0(buf, sizeof(buf), "MIB %s", argv[0]);
		return FUNC1(ctrl, buf);
	}
	return FUNC1(ctrl, "MIB");
}