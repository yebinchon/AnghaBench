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
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__* client_socket_dir ; 
 struct wpa_ctrl* ctrl_conn ; 
 char* ctrl_iface_dir ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char const*) ; 
 int FUNC5 (char const*) ; 
 struct wpa_ctrl* FUNC6 (char const*) ; 
 struct wpa_ctrl* FUNC7 (char*,scalar_t__*) ; 

__attribute__((used)) static struct wpa_ctrl * FUNC8(const char *ifname)
{
#ifndef CONFIG_CTRL_IFACE_UDP
	char *cfile;
	int flen;
#endif /* !CONFIG_CTRL_IFACE_UDP */

	if (ifname == NULL)
		return NULL;

#ifdef CONFIG_CTRL_IFACE_UDP
	ctrl_conn = wpa_ctrl_open(ifname);
	return ctrl_conn;
#else /* CONFIG_CTRL_IFACE_UDP */
	flen = FUNC5(ctrl_iface_dir) + FUNC5(ifname) + 2;
	cfile = FUNC2(flen);
	if (cfile == NULL)
		return NULL;
	FUNC4(cfile, flen, "%s/%s", ctrl_iface_dir, ifname);

	if (client_socket_dir && client_socket_dir[0] &&
	    FUNC0(client_socket_dir, F_OK) < 0) {
		FUNC3(client_socket_dir);
		FUNC1(cfile);
		return NULL;
	}

	ctrl_conn = FUNC7(cfile, client_socket_dir);
	FUNC1(cfile);
	return ctrl_conn;
#endif /* CONFIG_CTRL_IFACE_UDP */
}