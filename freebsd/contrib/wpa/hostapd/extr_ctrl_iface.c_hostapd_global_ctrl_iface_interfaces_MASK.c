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
struct hostapd_iface {size_t num_bss; TYPE_1__* conf; } ;
struct hostapd_bss_config {char* ctrl_interface; int /*<<< orphan*/  iface; } ;
struct hapd_interfaces {size_t count; struct hostapd_iface** iface; } ;
struct TYPE_2__ {struct hostapd_bss_config** bss; } ;

/* Variables and functions */
 int FUNC0 (char*,int,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int
FUNC3(struct hapd_interfaces *interfaces,
				     const char *input,
				     char *reply, int reply_size)
{
	size_t i, j;
	int res;
	char *pos, *end;
	struct hostapd_iface *iface;
	int show_ctrl = 0;

	if (input)
		show_ctrl = !!FUNC2(input, "ctrl");

	pos = reply;
	end = reply + reply_size;

	for (i = 0; i < interfaces->count; i++) {
		iface = interfaces->iface[i];

		for (j = 0; j < iface->num_bss; j++) {
			struct hostapd_bss_config *conf;

			conf = iface->conf->bss[j];
			if (show_ctrl)
				res = FUNC0(pos, end - pos,
						  "%s ctrl_iface=%s\n",
						  conf->iface,
						  conf->ctrl_interface ?
						  conf->ctrl_interface : "N/A");
			else
				res = FUNC0(pos, end - pos, "%s\n",
						  conf->iface);
			if (FUNC1(end - pos, res)) {
				*pos = '\0';
				return pos - reply;
			}
			pos += res;
		}
	}

	return pos - reply;
}