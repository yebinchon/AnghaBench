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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_global {scalar_t__ p2p_init_wpa_s; } ;

/* Variables and functions */
 int MSG_DEBUG ; 
 int MSG_EXCESSIVE ; 
 int FUNC0 (char*,char*,int const) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (scalar_t__,char*,size_t*) ; 
 scalar_t__ FUNC11 (struct wpa_global*,char*) ; 
 int FUNC12 (struct wpa_global*,char*,char*,int const) ; 
 int FUNC13 (struct wpa_global*,char*,int const) ; 
 scalar_t__ FUNC14 (struct wpa_global*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct wpa_global*) ; 
 scalar_t__ FUNC16 (struct wpa_global*,char*) ; 
 int FUNC17 (struct wpa_global*,char*,char*,int const) ; 
 int FUNC18 (struct wpa_global*,char*,char*,int const) ; 
 char* FUNC19 (struct wpa_global*,char*,char*,size_t*) ; 
 char* FUNC20 (struct wpa_global*,char*,size_t*) ; 
 scalar_t__ FUNC21 (struct wpa_global*) ; 
 scalar_t__ FUNC22 (struct wpa_global*,char*) ; 
 int FUNC23 (struct wpa_global*,char*,int const) ; 
 scalar_t__ FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (struct wpa_global*) ; 
 int /*<<< orphan*/  FUNC26 (struct wpa_global*) ; 

char * FUNC27(struct wpa_global *global,
						char *buf, size_t *resp_len)
{
	char *reply;
	const int reply_size = 2048;
	int reply_len;
	int level = MSG_DEBUG;

	if (FUNC7(buf, "IFNAME=", 7) == 0) {
		char *pos = FUNC4(buf + 7, ' ');
		if (pos) {
			*pos++ = '\0';
			return FUNC19(global,
							     buf + 7, pos,
							     resp_len);
		}
	}

	reply = FUNC20(global, buf, resp_len);
	if (reply)
		return reply;

	if (FUNC5(buf, "PING") == 0)
		level = MSG_EXCESSIVE;
	FUNC9(level, "RX global ctrl_iface",
			  (const u8 *) buf, FUNC6(buf));

	reply = FUNC2(reply_size);
	if (reply == NULL) {
		*resp_len = 1;
		return NULL;
	}

	FUNC3(reply, "OK\n", 3);
	reply_len = 3;

	if (FUNC5(buf, "PING") == 0) {
		FUNC3(reply, "PONG\n", 5);
		reply_len = 5;
	} else if (FUNC7(buf, "INTERFACE_ADD ", 14) == 0) {
		if (FUNC11(global, buf + 14))
			reply_len = -1;
	} else if (FUNC7(buf, "INTERFACE_REMOVE ", 17) == 0) {
		if (FUNC14(global, buf + 17))
			reply_len = -1;
	} else if (FUNC5(buf, "INTERFACE_LIST") == 0) {
		reply_len = FUNC13(
			global, reply, reply_size);
	} else if (FUNC7(buf, "INTERFACES", 10) == 0) {
		reply_len = FUNC12(
			global, buf + 10, reply, reply_size);
#ifdef CONFIG_FST
	} else if (os_strncmp(buf, "FST-ATTACH ", 11) == 0) {
		reply_len = wpas_global_ctrl_iface_fst_attach(global, buf + 11,
							      reply,
							      reply_size);
	} else if (os_strncmp(buf, "FST-DETACH ", 11) == 0) {
		reply_len = wpas_global_ctrl_iface_fst_detach(global, buf + 11,
							      reply,
							      reply_size);
	} else if (os_strncmp(buf, "FST-MANAGER ", 12) == 0) {
		reply_len = fst_ctrl_iface_receive(buf + 12, reply, reply_size);
#endif /* CONFIG_FST */
	} else if (FUNC5(buf, "TERMINATE") == 0) {
		FUNC15(global);
	} else if (FUNC5(buf, "SUSPEND") == 0) {
		FUNC26(global);
	} else if (FUNC5(buf, "RESUME") == 0) {
		FUNC25(global);
	} else if (FUNC7(buf, "SET ", 4) == 0) {
		if (FUNC22(global, buf + 4)) {
#ifdef CONFIG_P2P
			if (global->p2p_init_wpa_s) {
				os_free(reply);
				/* Check if P2P redirection would work for this
				 * command. */
				return wpa_supplicant_ctrl_iface_process(
					global->p2p_init_wpa_s,
					buf, resp_len);
			}
#endif /* CONFIG_P2P */
			reply_len = -1;
		}
	} else if (FUNC7(buf, "DUP_NETWORK ", 12) == 0) {
		if (FUNC16(global, buf + 12))
			reply_len = -1;
#ifndef CONFIG_NO_CONFIG_WRITE
	} else if (FUNC5(buf, "SAVE_CONFIG") == 0) {
		if (FUNC21(global))
			reply_len = -1;
#endif /* CONFIG_NO_CONFIG_WRITE */
	} else if (FUNC5(buf, "STATUS") == 0) {
		reply_len = FUNC23(global, reply,
							  reply_size);
#ifdef CONFIG_MODULE_TESTS
	} else if (os_strcmp(buf, "MODULE_TESTS") == 0) {
		if (wpas_module_tests() < 0)
			reply_len = -1;
#endif /* CONFIG_MODULE_TESTS */
	} else if (FUNC7(buf, "RELOG", 5) == 0) {
		if (FUNC8() < 0)
			reply_len = -1;
	} else {
		FUNC3(reply, "UNKNOWN COMMAND\n", 16);
		reply_len = 16;
	}

	if (reply_len < 0) {
		FUNC3(reply, "FAIL\n", 5);
		reply_len = 5;
	}

	*resp_len = reply_len;
	return reply;
}