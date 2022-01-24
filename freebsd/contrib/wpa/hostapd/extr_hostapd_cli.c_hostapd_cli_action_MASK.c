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
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  hostapd_cli_action_process ; 
 int /*<<< orphan*/  hostapd_cli_quit ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_ctrl*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  ping_interval ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int FUNC8 (struct wpa_ctrl*) ; 
 scalar_t__ FUNC9 (struct wpa_ctrl*,char*,int,char*,size_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct wpa_ctrl *ctrl)
{
	fd_set rfds;
	int fd, res;
	struct timeval tv;
	char buf[256];
	size_t len;

	fd = FUNC8(ctrl);

	while (!hostapd_cli_quit) {
		FUNC2(&rfds);
		FUNC1(fd, &rfds);
		tv.tv_sec = ping_interval;
		tv.tv_usec = 0;
		res = FUNC7(fd + 1, &rfds, NULL, NULL, &tv);
		if (res < 0 && errno != EINTR) {
			FUNC5("select");
			break;
		}

		if (FUNC0(fd, &rfds))
			FUNC3(ctrl, 0, 1);
		else {
			len = sizeof(buf) - 1;
			if (FUNC9(ctrl, "PING", 4, buf, &len,
					     hostapd_cli_action_process) < 0 ||
			    len < 4 || FUNC4(buf, "PONG", 4) != 0) {
				FUNC6("hostapd did not reply to PING "
				       "command - exiting\n");
				break;
			}
		}
	}
}