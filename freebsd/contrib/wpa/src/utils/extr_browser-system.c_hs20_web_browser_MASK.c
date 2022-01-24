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
 int /*<<< orphan*/  FUNC5 (char*,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  http_req ; 
 int /*<<< orphan*/  FUNC9 (struct http_server*) ; 
 struct http_server* FUNC10 (struct in_addr*,int,int /*<<< orphan*/ ,struct browser_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct browser_data*,int /*<<< orphan*/ ,int) ; 
 char const* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC14(const char *url)
{
	struct http_server *http;
	struct in_addr addr;
	struct browser_data data;
	pid_t pid;

	FUNC13(MSG_INFO, "Launching system browser to %s", url);

	FUNC11(&data, 0, sizeof(data));

	if (FUNC2() < 0) {
		FUNC13(MSG_ERROR, "eloop_init failed");
		return -1;
	}
	addr.s_addr = FUNC8((127 << 24) | 1);
	http = FUNC10(&addr, 12345, http_req, &data);
	if (http == NULL) {
		FUNC13(MSG_ERROR, "http_server_init failed");
		FUNC1();
		return -1;
	}

	pid = FUNC7();
	if (pid < 0) {
		FUNC13(MSG_ERROR, "fork: %s", FUNC12(errno));
		FUNC9(http);
		FUNC1();
		return -1;
	}

	if (pid == 0) {
		/* run the external command in the child process */
		char *argv[3];

		argv[0] = "browser-system";
		argv[1] = (void *) url;
		argv[2] = NULL;

		FUNC5("/usr/bin/x-www-browser", argv);
		FUNC13(MSG_ERROR, "execv: %s", FUNC12(errno));
		FUNC6(0);
		return -1;
	}

	FUNC3(120, 0, browser_timeout, &data, NULL);
	FUNC4();
	FUNC0(browser_timeout, &data, NULL);
	FUNC9(http);
	FUNC1();

	/* TODO: Close browser */

	return data.success;
}