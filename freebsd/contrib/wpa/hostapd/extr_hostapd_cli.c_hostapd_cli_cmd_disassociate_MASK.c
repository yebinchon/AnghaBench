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
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct wpa_ctrl*,char*) ; 

__attribute__((used)) static int FUNC3(struct wpa_ctrl *ctrl, int argc,
					char *argv[])
{
	char buf[64];
	if (argc < 1) {
		FUNC1("Invalid 'disassociate' command - exactly one "
		       "argument, STA address, is required.\n");
		return -1;
	}
	if (argc > 1)
		FUNC0(buf, sizeof(buf), "DISASSOCIATE %s %s",
			    argv[0], argv[1]);
	else
		FUNC0(buf, sizeof(buf), "DISASSOCIATE %s", argv[0]);
	return FUNC2(ctrl, buf);
}