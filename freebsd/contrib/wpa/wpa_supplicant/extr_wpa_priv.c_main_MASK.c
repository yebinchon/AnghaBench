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
struct wpa_priv_interface {struct wpa_priv_interface* next; } ;
struct wpa_priv_global {struct wpa_priv_interface* interfaces; } ;
typedef  int /*<<< orphan*/  global ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (int,char**,char*) ; 
 char* optarg ; 
 int optind ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_priv_global*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  wpa_debug_level ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct wpa_priv_interface*) ; 
 struct wpa_priv_interface* FUNC17 (struct wpa_priv_global*,char*,char*) ; 
 int /*<<< orphan*/  wpa_priv_terminate ; 

int FUNC18(int argc, char *argv[])
{
	int c, i;
	int ret = -1;
	char *pid_file = NULL;
	int daemonize = 0;
	char *ctrl_dir = "/var/run/wpa_priv";
	struct wpa_priv_global global;
	struct wpa_priv_interface *iface;

	if (FUNC11())
		return -1;

	FUNC15();

	FUNC9(&global, 0, sizeof(global));
	global.interfaces = NULL;

	for (;;) {
		c = FUNC5(argc, argv, "Bc:dP:");
		if (c < 0)
			break;
		switch (c) {
		case 'B':
			daemonize++;
			break;
		case 'c':
			ctrl_dir = optarg;
			break;
		case 'd':
			wpa_debug_level--;
			break;
		case 'P':
			pid_file = FUNC12(optarg);
			break;
		default:
			FUNC13();
			goto out2;
		}
	}

	if (optind >= argc) {
		FUNC13();
		goto out2;
	}

	FUNC14(MSG_DEBUG, "wpa_priv control directory: '%s'", ctrl_dir);

	if (FUNC1()) {
		FUNC14(MSG_ERROR, "Failed to initialize event loop");
		goto out2;
	}

	for (i = optind; i < argc; i++) {
		FUNC14(MSG_DEBUG, "Adding driver:interface %s", argv[i]);
		iface = FUNC17(&global, ctrl_dir, argv[i]);
		if (iface == NULL)
			goto out;
		iface->next = global.interfaces;
		global.interfaces = iface;
	}

	if (daemonize && FUNC6(pid_file) && FUNC4())
		goto out;

	FUNC2(wpa_priv_terminate, NULL);
	FUNC3();

	ret = 0;

out:
	iface = global.interfaces;
	while (iface) {
		struct wpa_priv_interface *prev = iface;
		iface = iface->next;
		FUNC16(prev);
	}

	FUNC0();

out2:
	if (daemonize)
		FUNC7(pid_file);
	FUNC8(pid_file);
	FUNC10();

	return ret;
}