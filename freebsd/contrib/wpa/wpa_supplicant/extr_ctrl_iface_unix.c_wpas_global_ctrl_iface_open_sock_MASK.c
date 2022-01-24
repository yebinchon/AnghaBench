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
struct TYPE_2__ {char* ctrl_interface; char* ctrl_interface_group; } ;
struct wpa_global {TYPE_1__ params; } ;
struct sockaddr_un {int sun_len; char* sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
struct group {scalar_t__ gr_gid; } ;
struct ctrl_iface_global_priv {int sock; int android_control_socket; } ;
typedef  scalar_t__ gid_t ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int S_IRWXG ; 
 int S_IRWXU ; 
 void* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 scalar_t__ FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,struct wpa_global*,struct ctrl_iface_global_priv*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,...) ; 
 struct group* FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char const*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 scalar_t__ FUNC11 (char const*,char*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char*,char**,int) ; 
 scalar_t__ FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  wpa_supplicant_global_ctrl_iface_receive ; 

__attribute__((used)) static int FUNC17(struct wpa_global *global,
					    struct ctrl_iface_global_priv *priv)
{
	struct sockaddr_un addr;
	const char *ctrl = global->params.ctrl_interface;
	int flags;

	FUNC16(MSG_DEBUG, "Global control interface '%s'", ctrl);

#ifdef ANDROID
	if (os_strncmp(ctrl, "@android:", 9) == 0) {
		priv->sock = android_get_control_socket(ctrl + 9);
		if (priv->sock < 0) {
			wpa_printf(MSG_ERROR, "Failed to open Android control "
				   "socket '%s'", ctrl + 9);
			goto fail;
		}
		wpa_printf(MSG_DEBUG, "Using Android control socket '%s'",
			   ctrl + 9);
		priv->android_control_socket = 1;
		goto havesock;
	}

	if (os_strncmp(ctrl, "@abstract:", 10) != 0) {
		/*
		 * Backwards compatibility - try to open an Android control
		 * socket and if that fails, assume this was a UNIX domain
		 * socket instead.
		 */
		priv->sock = android_get_control_socket(ctrl);
		if (priv->sock >= 0) {
			wpa_printf(MSG_DEBUG,
				   "Using Android control socket '%s'",
				   ctrl);
			priv->android_control_socket = 1;
			goto havesock;
		}
	}
#endif /* ANDROID */

	priv->sock = FUNC12(PF_UNIX, SOCK_DGRAM, 0);
	if (priv->sock < 0) {
		FUNC16(MSG_ERROR, "socket(PF_UNIX): %s", FUNC13(errno));
		goto fail;
	}

	FUNC9(&addr, 0, sizeof(addr));
#if defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
	addr.sun_len = sizeof(addr);
#endif /* __FreeBSD__ */
	addr.sun_family = AF_UNIX;

	if (FUNC11(ctrl, "@abstract:", 10) == 0) {
		addr.sun_path[0] = '\0';
		FUNC10(addr.sun_path + 1, ctrl + 10,
			   sizeof(addr.sun_path) - 1);
		if (FUNC1(priv->sock, (struct sockaddr *) &addr, sizeof(addr)) <
		    0) {
			FUNC16(MSG_ERROR, "supp-global-ctrl-iface-init: "
				   "bind(PF_UNIX;%s) failed: %s",
				   ctrl, FUNC13(errno));
			goto fail;
		}
		FUNC16(MSG_DEBUG, "Using Abstract control socket '%s'",
			   ctrl + 10);
		goto havesock;
	}

	FUNC10(addr.sun_path, ctrl, sizeof(addr.sun_path));
	if (FUNC1(priv->sock, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
		FUNC16(MSG_INFO, "supp-global-ctrl-iface-init(%s) (will try fixup): bind(PF_UNIX): %s",
			   ctrl, FUNC13(errno));
		if (FUNC4(priv->sock, (struct sockaddr *) &addr,
			    sizeof(addr)) < 0) {
			FUNC16(MSG_DEBUG, "ctrl_iface exists, but does not"
				   " allow connections - assuming it was left"
				   "over from forced program termination");
			if (FUNC15(ctrl) < 0) {
				FUNC16(MSG_ERROR,
					   "Could not unlink existing ctrl_iface socket '%s': %s",
					   ctrl, FUNC13(errno));
				goto fail;
			}
			if (FUNC1(priv->sock, (struct sockaddr *) &addr,
				 sizeof(addr)) < 0) {
				FUNC16(MSG_ERROR, "supp-glb-iface-init: bind(PF_UNIX;%s): %s",
					   ctrl, FUNC13(errno));
				goto fail;
			}
			FUNC16(MSG_DEBUG, "Successfully replaced leftover "
				   "ctrl_iface socket '%s'",
				   ctrl);
		} else {
			FUNC16(MSG_INFO, "ctrl_iface exists and seems to "
				   "be in use - cannot override it");
			FUNC16(MSG_INFO, "Delete '%s' manually if it is "
				   "not used anymore",
				   ctrl);
			goto fail;
		}
	}

	FUNC16(MSG_DEBUG, "Using UNIX control socket '%s'", ctrl);

	if (global->params.ctrl_interface_group) {
		char *gid_str = global->params.ctrl_interface_group;
		gid_t gid = 0;
		struct group *grp;
		char *endp;

		grp = FUNC7(gid_str);
		if (grp) {
			gid = grp->gr_gid;
			FUNC16(MSG_DEBUG, "ctrl_interface_group=%d"
				   " (from group name '%s')",
				   (int) gid, gid_str);
		} else {
			/* Group name not found - try to parse this as gid */
			gid = FUNC14(gid_str, &endp, 10);
			if (*gid_str == '\0' || *endp != '\0') {
				FUNC16(MSG_ERROR, "CTRL: Invalid group "
					   "'%s'", gid_str);
				goto fail;
			}
			FUNC16(MSG_DEBUG, "ctrl_interface_group=%d",
				   (int) gid);
		}
		if (FUNC8(ctrl, -1, gid) < 0) {
			FUNC16(MSG_ERROR,
				   "lchown[global_ctrl_interface=%s,gid=%d]: %s",
				   ctrl, (int) gid, FUNC13(errno));
			goto fail;
		}

		if (FUNC2(ctrl, S_IRWXU | S_IRWXG) < 0) {
			FUNC16(MSG_ERROR,
				   "chmod[global_ctrl_interface=%s]: %s",
				   ctrl, FUNC13(errno));
			goto fail;
		}
	} else {
		if (FUNC2(ctrl, S_IRWXU) < 0) {
			FUNC16(MSG_DEBUG,
				   "chmod[global_ctrl_interface=%s](S_IRWXU): %s",
				   ctrl, FUNC13(errno));
			/* continue anyway since group change was not required
			 */
		}
	}

havesock:

	/*
	 * Make socket non-blocking so that we don't hang forever if
	 * target dies unexpectedly.
	 */
	flags = FUNC6(priv->sock, F_GETFL);
	if (flags >= 0) {
		flags |= O_NONBLOCK;
		if (FUNC6(priv->sock, F_SETFL, flags) < 0) {
			FUNC16(MSG_INFO, "fcntl(ctrl, O_NONBLOCK): %s",
				   FUNC13(errno));
			/* Not fatal, continue on.*/
		}
	}

	FUNC5(priv->sock,
				 wpa_supplicant_global_ctrl_iface_receive,
				 global, priv);

	return 0;

fail:
	if (priv->sock >= 0) {
		FUNC3(priv->sock);
		priv->sock = -1;
	}
	return -1;
}