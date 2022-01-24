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
struct sockaddr_un {int sun_len; int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
struct hapd_interfaces {int global_ctrl_sock; char* global_iface_path; char* global_iface_name; scalar_t__ ctrl_iface_group; } ;
struct addrinfo {int ai_addrlen; struct sockaddr* ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  p ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  AI_PASSIVE ; 
 int /*<<< orphan*/  COOKIE_LEN ; 
 scalar_t__ EEXIST ; 
 int HOSTAPD_GLOBAL_CTRL_IFACE_PORT ; 
 int HOSTAPD_GLOBAL_CTRL_IFACE_PORT_LIMIT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int S_IRWXG ; 
 int S_IRWXU ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,struct hapd_interfaces*,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  gcookie ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC9 (struct hapd_interfaces*) ; 
 char* FUNC10 (struct hapd_interfaces*) ; 
 int /*<<< orphan*/  hostapd_global_ctrl_iface_receive ; 
 scalar_t__ FUNC11 (char*,int,scalar_t__) ; 
 scalar_t__ FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC18 (char*) ; 
 char* FUNC19 (char*,char*) ; 
 void* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC21 (scalar_t__) ; 
 scalar_t__ FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC24(struct hapd_interfaces *interface)
{
#ifdef CONFIG_CTRL_IFACE_UDP
	int port = HOSTAPD_GLOBAL_CTRL_IFACE_PORT;
	char p[32] = { 0 };
	char *pos;
	struct addrinfo hints = { 0 }, *res, *saveres;
	int n;

	if (interface->global_ctrl_sock > -1) {
		wpa_printf(MSG_DEBUG, "ctrl_iface already exists!");
		return 0;
	}

	if (interface->global_iface_path == NULL)
		return 0;

	pos = os_strstr(interface->global_iface_path, "udp:");
	if (pos) {
		pos += 4;
		port = atoi(pos);
		if (port <= 0) {
			wpa_printf(MSG_ERROR, "Invalid global ctrl UDP port");
			goto fail;
		}
	}

	os_get_random(gcookie, COOKIE_LEN);

#ifdef CONFIG_CTRL_IFACE_UDP_REMOTE
	hints.ai_flags = AI_PASSIVE;
#endif /* CONFIG_CTRL_IFACE_UDP_REMOTE */

#ifdef CONFIG_CTRL_IFACE_UDP_IPV6
	hints.ai_family = AF_INET6;
#else /* CONFIG_CTRL_IFACE_UDP_IPV6 */
	hints.ai_family = AF_INET;
#endif /* CONFIG_CTRL_IFACE_UDP_IPV6 */
	hints.ai_socktype = SOCK_DGRAM;

try_again:
	os_snprintf(p, sizeof(p), "%d", port);
	n = getaddrinfo(NULL, p, &hints, &res);
	if (n) {
		wpa_printf(MSG_ERROR, "getaddrinfo(): %s", gai_strerror(n));
		goto fail;
	}

	saveres = res;
	interface->global_ctrl_sock = socket(res->ai_family, res->ai_socktype,
					     res->ai_protocol);
	if (interface->global_ctrl_sock < 0) {
		wpa_printf(MSG_ERROR, "socket(PF_INET): %s", strerror(errno));
		goto fail;
	}

	if (bind(interface->global_ctrl_sock, res->ai_addr, res->ai_addrlen) <
	    0) {
		port++;
		if ((port - HOSTAPD_GLOBAL_CTRL_IFACE_PORT) <
		    HOSTAPD_GLOBAL_CTRL_IFACE_PORT_LIMIT && !pos)
			goto try_again;
		wpa_printf(MSG_ERROR, "bind(AF_INET): %s", strerror(errno));
		goto fail;
	}

	freeaddrinfo(saveres);

	wpa_printf(MSG_DEBUG, "global ctrl_iface_init UDP port: %d", port);

	if (eloop_register_read_sock(interface->global_ctrl_sock,
				     hostapd_global_ctrl_iface_receive,
				     interface, NULL) < 0) {
		hostapd_global_ctrl_iface_deinit(interface);
		return -1;
	}

	return 0;

fail:
	if (interface->global_ctrl_sock >= 0)
		close(interface->global_ctrl_sock);
	return -1;
#else /* CONFIG_CTRL_IFACE_UDP */
	struct sockaddr_un addr;
	int s = -1;
	char *fname = NULL;

	if (interface->global_iface_path == NULL) {
		FUNC23(MSG_DEBUG, "ctrl_iface not configured!");
		return 0;
	}

	if (FUNC12(interface->global_iface_path, S_IRWXU | S_IRWXG) < 0) {
		if (errno == EEXIST) {
			FUNC23(MSG_DEBUG, "Using existing control "
				   "interface directory.");
		} else {
			FUNC23(MSG_ERROR, "mkdir[ctrl_interface]: %s",
				   FUNC21(errno));
			goto fail;
		}
	} else if (interface->ctrl_iface_group &&
		   FUNC11(interface->global_iface_path, -1,
			  interface->ctrl_iface_group) < 0) {
		FUNC23(MSG_ERROR, "lchown[ctrl_interface]: %s",
			   FUNC21(errno));
		goto fail;
	}

	if (FUNC18(interface->global_iface_path) + 1 +
	    FUNC18(interface->global_iface_name) >= sizeof(addr.sun_path))
		goto fail;

	s = FUNC20(PF_UNIX, SOCK_DGRAM, 0);
	if (s < 0) {
		FUNC23(MSG_ERROR, "socket(PF_UNIX): %s", FUNC21(errno));
		goto fail;
	}

	FUNC15(&addr, 0, sizeof(addr));
#ifdef __FreeBSD__
	addr.sun_len = sizeof(addr);
#endif /* __FreeBSD__ */
	addr.sun_family = AF_UNIX;
	fname = FUNC10(interface);
	if (fname == NULL)
		goto fail;
	FUNC17(addr.sun_path, fname, sizeof(addr.sun_path));
	if (FUNC1(s, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
		FUNC23(MSG_DEBUG, "ctrl_iface bind(PF_UNIX) failed: %s",
			   FUNC21(errno));
		if (FUNC4(s, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
			FUNC23(MSG_DEBUG, "ctrl_iface exists, but does not"
				   " allow connections - assuming it was left"
				   "over from forced program termination");
			if (FUNC22(fname) < 0) {
				FUNC23(MSG_ERROR,
					   "Could not unlink existing ctrl_iface socket '%s': %s",
					   fname, FUNC21(errno));
				goto fail;
			}
			if (FUNC1(s, (struct sockaddr *) &addr, sizeof(addr)) <
			    0) {
				FUNC23(MSG_ERROR, "bind(PF_UNIX): %s",
					   FUNC21(errno));
				goto fail;
			}
			FUNC23(MSG_DEBUG, "Successfully replaced leftover "
				   "ctrl_iface socket '%s'", fname);
		} else {
			FUNC23(MSG_INFO, "ctrl_iface exists and seems to "
				   "be in use - cannot override it");
			FUNC23(MSG_INFO, "Delete '%s' manually if it is "
				   "not used anymore", fname);
			FUNC13(fname);
			fname = NULL;
			goto fail;
		}
	}

	if (interface->ctrl_iface_group &&
	    FUNC11(fname, -1, interface->ctrl_iface_group) < 0) {
		FUNC23(MSG_ERROR, "lchown[ctrl_interface]: %s",
			   FUNC21(errno));
		goto fail;
	}

	if (FUNC2(fname, S_IRWXU | S_IRWXG) < 0) {
		FUNC23(MSG_ERROR, "chmod[ctrl_interface/ifname]: %s",
			   FUNC21(errno));
		goto fail;
	}
	FUNC13(fname);

	interface->global_ctrl_sock = s;
	FUNC5(s, hostapd_global_ctrl_iface_receive,
				 interface, NULL);

	return 0;

fail:
	if (s >= 0)
		FUNC3(s);
	if (fname) {
		FUNC22(fname);
		FUNC13(fname);
	}
	return -1;
#endif /* CONFIG_CTRL_IFACE_UDP */
}