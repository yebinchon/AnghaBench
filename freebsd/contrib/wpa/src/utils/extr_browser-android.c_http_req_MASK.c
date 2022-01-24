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
struct wpabuf {int dummy; } ;
struct http_request {int dummy; } ;
struct browser_data {int success; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  browser_timeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct browser_data**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct http_request*) ; 
 char* FUNC5 (struct http_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct http_request*,struct wpabuf*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct wpabuf* FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(void *ctx, struct http_request *req)
{
	struct browser_data *data = ctx;
	struct wpabuf *resp;
	const char *url;
	int done = 0;

	url = FUNC5(req);
	FUNC9(MSG_INFO, "Browser response received: %s", url);

	if (FUNC7(url, "/") == 0) {
		data->success = 1;
		done = 1;
	} else if (FUNC8(url, "/osu/", 5) == 0) {
		data->success = FUNC0(url + 5);
		done = 1;
	}

	resp = FUNC10(1);
	if (resp == NULL) {
		FUNC4(req);
		if (done)
			FUNC3();
		return;
	}

	if (done) {
		FUNC1(browser_timeout, NULL, NULL);
		FUNC2(0, 500000, browser_timeout, &data, NULL);
	}

	FUNC6(req, resp);
}