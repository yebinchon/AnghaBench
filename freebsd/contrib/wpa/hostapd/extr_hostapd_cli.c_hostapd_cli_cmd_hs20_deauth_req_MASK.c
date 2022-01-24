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
 int FUNC0 (char*,int,char*,char*,char*,char*,...) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct wpa_ctrl*,char*) ; 

__attribute__((used)) static int FUNC4(struct wpa_ctrl *ctrl, int argc,
					   char *argv[])
{
	char buf[300];
	int res;

	if (argc < 3) {
		FUNC2("Invalid 'hs20_deauth_req' command - at least three arguments (STA addr, Code, Re-auth Delay) are needed\n");
		return -1;
	}

	if (argc > 3)
		res = FUNC0(buf, sizeof(buf),
				  "HS20_DEAUTH_REQ %s %s %s %s",
				  argv[0], argv[1], argv[2], argv[3]);
	else
		res = FUNC0(buf, sizeof(buf),
				  "HS20_DEAUTH_REQ %s %s %s",
				  argv[0], argv[1], argv[2]);
	if (FUNC1(sizeof(buf), res))
		return -1;
	return FUNC3(ctrl, buf);
}