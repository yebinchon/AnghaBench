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
struct wpa_supplicant {char* ifname; TYPE_1__* conf; } ;
struct sockaddr_un {int sun_len; int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
struct group {scalar_t__ gr_gid; } ;
struct ctrl_iface_priv {int sock; int android_control_socket; } ;
typedef  scalar_t__ gid_t ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_2__ {char* ctrl_interface_group; int /*<<< orphan*/  ctrl_interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int S_IRGRP ; 
 int S_IRUSR ; 
 int S_IRWXG ; 
 int S_IRWXU ; 
 int S_IWUSR ; 
 int S_IXGRP ; 
 int S_IXUSR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,struct wpa_supplicant*,struct ctrl_iface_priv*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,...) ; 
 struct group* FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,int,scalar_t__) ; 
 scalar_t__ FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC15 (char*) ; 
 scalar_t__ FUNC16 (char*,char*,int) ; 
 char* FUNC17 (char*,char*) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (char*,char**,int) ; 
 scalar_t__ FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  wpa_supplicant_ctrl_iface_msg_cb ; 
 char* FUNC24 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  wpa_supplicant_ctrl_iface_receive ; 

__attribute__((used)) static int FUNC25(struct wpa_supplicant *wpa_s,
				     struct ctrl_iface_priv *priv)
{
	struct sockaddr_un addr;
	char *fname = NULL;
	gid_t gid = 0;
	int gid_set = 0;
	char *buf, *dir = NULL, *gid_str = NULL;
	struct group *grp;
	char *endp;
	int flags;

	buf = FUNC13(wpa_s->conf->ctrl_interface);
	if (buf == NULL)
		goto fail;
#ifdef ANDROID
	os_snprintf(addr.sun_path, sizeof(addr.sun_path), "wpa_%s",
		    wpa_s->conf->ctrl_interface);
	priv->sock = android_get_control_socket(addr.sun_path);
	if (priv->sock >= 0) {
		priv->android_control_socket = 1;
		goto havesock;
	}
#endif /* ANDROID */
	if (FUNC16(buf, "DIR=", 4) == 0) {
		dir = buf + 4;
		gid_str = FUNC17(dir, " GROUP=");
		if (gid_str) {
			*gid_str = '\0';
			gid_str += 7;
		}
	} else {
		dir = buf;
		gid_str = wpa_s->conf->ctrl_interface_group;
	}

	if (FUNC9(dir, S_IRWXU | S_IRWXG) < 0) {
		if (errno == EEXIST) {
			FUNC23(MSG_DEBUG, "Using existing control "
				   "interface directory.");
		} else {
			FUNC23(MSG_ERROR, "mkdir[ctrl_interface=%s]: %s",
				   dir, FUNC19(errno));
			goto fail;
		}
	}

#ifdef ANDROID
	/*
	 * wpa_supplicant is started from /init.*.rc on Android and that seems
	 * to be using umask 0077 which would leave the control interface
	 * directory without group access. This breaks things since Wi-Fi
	 * framework assumes that this directory can be accessed by other
	 * applications in the wifi group. Fix this by adding group access even
	 * if umask value would prevent this.
	 */
	if (chmod(dir, S_IRWXU | S_IRWXG) < 0) {
		wpa_printf(MSG_ERROR, "CTRL: Could not chmod directory: %s",
			   strerror(errno));
		/* Try to continue anyway */
	}
#endif /* ANDROID */

	if (gid_str) {
		grp = FUNC7(gid_str);
		if (grp) {
			gid = grp->gr_gid;
			gid_set = 1;
			FUNC23(MSG_DEBUG, "ctrl_interface_group=%d"
				   " (from group name '%s')",
				   (int) gid, gid_str);
		} else {
			/* Group name not found - try to parse this as gid */
			gid = FUNC20(gid_str, &endp, 10);
			if (*gid_str == '\0' || *endp != '\0') {
				FUNC23(MSG_ERROR, "CTRL: Invalid group "
					   "'%s'", gid_str);
				goto fail;
			}
			gid_set = 1;
			FUNC23(MSG_DEBUG, "ctrl_interface_group=%d",
				   (int) gid);
		}
	}

	if (gid_set && FUNC8(dir, -1, gid) < 0) {
		FUNC23(MSG_ERROR, "lchown[ctrl_interface=%s,gid=%d]: %s",
			   dir, (int) gid, FUNC19(errno));
		goto fail;
	}

	/* Make sure the group can enter and read the directory */
	if (gid_set &&
	    FUNC2(dir, S_IRUSR | S_IWUSR | S_IXUSR | S_IRGRP | S_IXGRP) < 0) {
		FUNC23(MSG_ERROR, "CTRL: chmod[ctrl_interface]: %s",
			   FUNC19(errno));
		goto fail;
	}

	if (FUNC15(dir) + 1 + FUNC15(wpa_s->ifname) >=
	    sizeof(addr.sun_path)) {
		FUNC23(MSG_ERROR, "ctrl_iface path limit exceeded");
		goto fail;
	}

	priv->sock = FUNC18(PF_UNIX, SOCK_DGRAM, 0);
	if (priv->sock < 0) {
		FUNC23(MSG_ERROR, "socket(PF_UNIX): %s", FUNC19(errno));
		goto fail;
	}

	FUNC11(&addr, 0, sizeof(addr));
#if defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
	addr.sun_len = sizeof(addr);
#endif /* __FreeBSD__ */
	addr.sun_family = AF_UNIX;
	fname = FUNC24(wpa_s);
	if (fname == NULL)
		goto fail;
	FUNC14(addr.sun_path, fname, sizeof(addr.sun_path));
	if (FUNC1(priv->sock, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
		FUNC23(MSG_DEBUG, "ctrl_iface bind(PF_UNIX) failed: %s",
			   FUNC19(errno));
		if (FUNC4(priv->sock, (struct sockaddr *) &addr,
			    sizeof(addr)) < 0) {
			FUNC23(MSG_DEBUG, "ctrl_iface exists, but does not"
				   " allow connections - assuming it was left"
				   "over from forced program termination");
			if (FUNC21(fname) < 0) {
				FUNC23(MSG_ERROR,
					   "Could not unlink existing ctrl_iface socket '%s': %s",
					   fname, FUNC19(errno));
				goto fail;
			}
			if (FUNC1(priv->sock, (struct sockaddr *) &addr,
				 sizeof(addr)) < 0) {
				FUNC23(MSG_ERROR, "supp-ctrl-iface-init: bind(PF_UNIX): %s",
					   FUNC19(errno));
				goto fail;
			}
			FUNC23(MSG_DEBUG, "Successfully replaced leftover "
				   "ctrl_iface socket '%s'", fname);
		} else {
			FUNC23(MSG_INFO, "ctrl_iface exists and seems to "
				   "be in use - cannot override it");
			FUNC23(MSG_INFO, "Delete '%s' manually if it is "
				   "not used anymore", fname);
			FUNC10(fname);
			fname = NULL;
			goto fail;
		}
	}

	if (gid_set && FUNC8(fname, -1, gid) < 0) {
		FUNC23(MSG_ERROR, "lchown[ctrl_interface=%s,gid=%d]: %s",
			   fname, (int) gid, FUNC19(errno));
		goto fail;
	}

	if (FUNC2(fname, S_IRWXU | S_IRWXG) < 0) {
		FUNC23(MSG_ERROR, "chmod[ctrl_interface=%s]: %s",
			   fname, FUNC19(errno));
		goto fail;
	}
	FUNC10(fname);

#ifdef ANDROID
havesock:
#endif /* ANDROID */

	/*
	 * Make socket non-blocking so that we don't hang forever if
	 * target dies unexpectedly.
	 */
	flags = FUNC6(priv->sock, F_GETFL);
	if (flags >= 0) {
		flags |= O_NONBLOCK;
		if (FUNC6(priv->sock, F_SETFL, flags) < 0) {
			FUNC23(MSG_INFO, "fcntl(ctrl, O_NONBLOCK): %s",
				   FUNC19(errno));
			/* Not fatal, continue on.*/
		}
	}

	FUNC5(priv->sock, wpa_supplicant_ctrl_iface_receive,
				 wpa_s, priv);
	FUNC22(wpa_supplicant_ctrl_iface_msg_cb);

	FUNC10(buf);
	return 0;

fail:
	if (priv->sock >= 0) {
		FUNC3(priv->sock);
		priv->sock = -1;
	}
	if (fname) {
		FUNC21(fname);
		FUNC10(fname);
	}
	FUNC10(buf);
	return -1;
}