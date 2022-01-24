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
struct wpa_supplicant {struct wpa_supplicant* next; int /*<<< orphan*/  ifname; TYPE_1__* conf; } ;
struct wpa_global {struct wpa_supplicant* ifaces; } ;
struct TYPE_2__ {char* ctrl_interface; } ;

/* Variables and functions */
 int FUNC0 (char*,int,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(struct wpa_global *global,
						  const char *input,
						  char *buf, int len)
{
	int res;
	char *pos, *end;
	struct wpa_supplicant *wpa_s;
	int show_ctrl = 0;

	if (input)
		show_ctrl = !!FUNC2(input, "ctrl");

	wpa_s = global->ifaces;
	pos = buf;
	end = buf + len;

	while (wpa_s) {
		if (show_ctrl)
			res = FUNC0(pos, end - pos, "%s ctrl_iface=%s\n",
					  wpa_s->ifname,
					  wpa_s->conf->ctrl_interface ?
					  wpa_s->conf->ctrl_interface : "N/A");
		else
			res = FUNC0(pos, end - pos, "%s\n",
					  wpa_s->ifname);

		if (FUNC1(end - pos, res)) {
			*pos = '\0';
			break;
		}
		pos += res;
		wpa_s = wpa_s->next;
	}
	return pos - buf;
}