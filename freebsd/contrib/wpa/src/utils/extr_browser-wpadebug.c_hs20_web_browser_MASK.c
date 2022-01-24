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
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct http_server {int dummy; } ;
struct browser_data {int success; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  browser_timeout ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct browser_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct browser_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (char*,char**,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  http_req ; 
 int /*<<< orphan*/  FUNC9 (struct http_server*) ; 
 struct http_server* FUNC10 (struct in_addr*,int,int /*<<< orphan*/ ,struct browser_data*) ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct browser_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC15(const char *url)
{
	struct http_server *http;
	struct in_addr addr;
	struct browser_data data;
	pid_t pid;

	FUNC14(MSG_INFO, "Launching wpadebug browser to %s", url);

	FUNC12(&data, 0, sizeof(data));

	if (FUNC2() < 0) {
		FUNC14(MSG_ERROR, "eloop_init failed");
		return -1;
	}
	addr.s_addr = FUNC8((127 << 24) | 1);
	http = FUNC10(&addr, 12345, http_req, &data);
	if (http == NULL) {
		FUNC14(MSG_ERROR, "http_server_init failed");
		FUNC1();
		return -1;
	}

	pid = FUNC7();
	if (pid < 0) {
		FUNC14(MSG_ERROR, "fork: %s", FUNC13(errno));
		FUNC9(http);
		FUNC1();
		return -1;
	}

	if (pid == 0) {
		/* run the external command in the child process */
		char *argv[14];
		char *envp[] = { "PATH=/system/bin:/vendor/bin", NULL };

		argv[0] = "browser-wpadebug";
		argv[1] = "start";
		argv[2] = "-a";
		argv[3] = "android.action.MAIN";
		argv[4] = "-c";
		argv[5] = "android.intent.category.LAUNCHER";
		argv[6] = "-n";
		argv[7] = "w1.fi.wpadebug/.WpaWebViewActivity";
		argv[8] = "-e";
		argv[9] = "w1.fi.wpadebug.URL";
		argv[10] = (void *) url;
		argv[11] = "--user";
		argv[12] = "-3"; /* USER_CURRENT_OR_SELF */
		argv[13] = NULL;

		FUNC5("/system/bin/am", argv, envp);
		FUNC14(MSG_ERROR, "execve: %s", FUNC13(errno));
		FUNC6(0);
		return -1;
	}

	FUNC3(300, 0, browser_timeout, &data, NULL);
	FUNC4();
	FUNC0(browser_timeout, &data, NULL);
	FUNC9(http);
	FUNC1();

	FUNC14(MSG_INFO, "Closing Android browser");
	if (FUNC11("/system/bin/am",
		    "start -a android.action.MAIN "
		    "-c android.intent.category.LAUNCHER "
		    "-n w1.fi.wpadebug/.WpaWebViewActivity "
		    "-e w1.fi.wpadebug.URL FINISH", 1) != 0) {
		FUNC14(MSG_INFO, "Failed to close wpadebug browser");
	}

	return data.success;
}