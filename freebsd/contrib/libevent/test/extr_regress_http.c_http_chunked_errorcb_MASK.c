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
struct evhttp_request {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef  enum message_read_status { ____Placeholder_message_read_status } message_read_status ;

/* Variables and functions */
 int ALL_DATA_READ ; 
 short BEV_EVENT_CONNECTED ; 
 short BEV_EVENT_EOF ; 
 int /*<<< orphan*/  EVBUFFER_EOL_CRLF ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct evhttp_request*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct evhttp_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct evhttp_request*) ; 
 struct evhttp_request* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 scalar_t__ FUNC13 (char*,char*,int) ; 
 int test_ok ; 

__attribute__((used)) static void
FUNC14(struct bufferevent *bev, short what, void *arg)
{
	struct evhttp_request *req = NULL;

	/** SSL */
	if (what & BEV_EVENT_CONNECTED)
		return;

	if (!test_ok)
		goto out;

	test_ok = -1;

	if ((what & BEV_EVENT_EOF) != 0) {
		const char *header;
		enum message_read_status done;
		req = FUNC10(NULL, NULL);

		/* req->kind = EVHTTP_RESPONSE; */
		done = FUNC6(req, FUNC0(bev));
		if (done != ALL_DATA_READ)
			goto out;

		done = FUNC7(req, FUNC0(bev));
		if (done != ALL_DATA_READ)
			goto out;

		header = FUNC5(FUNC9(req), "Transfer-Encoding");
		if (header == NULL || FUNC12(header, "chunked"))
			goto out;

		header = FUNC5(FUNC9(req), "Connection");
		if (header == NULL || FUNC12(header, "close"))
			goto out;

		header = FUNC3(FUNC0(bev), NULL, EVBUFFER_EOL_CRLF);
		if (header == NULL)
			goto out;
		/* 13 chars */
		if (FUNC12(header, "d")) {
			FUNC11((void*)header);
			goto out;
		}
		FUNC11((void*)header);

		if (FUNC13((char *)FUNC2(FUNC0(bev), 13),
			"This is funny", 13))
			goto out;

		FUNC1(FUNC0(bev), 13 + 2);

		header = FUNC3(FUNC0(bev), NULL, EVBUFFER_EOL_CRLF);
		if (header == NULL)
			goto out;
		/* 18 chars */
		if (FUNC12(header, "12"))
			goto out;
		FUNC11((char *)header);

		if (FUNC13((char *)FUNC2(FUNC0(bev), 18),
			"but not hilarious.", 18))
			goto out;

		FUNC1(FUNC0(bev), 18 + 2);

		header = FUNC3(FUNC0(bev), NULL, EVBUFFER_EOL_CRLF);
		if (header == NULL)
			goto out;
		/* 8 chars */
		if (FUNC12(header, "8")) {
			FUNC11((void*)header);
			goto out;
		}
		FUNC11((char *)header);

		if (FUNC13((char *)FUNC2(FUNC0(bev), 8),
			"bwv 1052.", 8))
			goto out;

		FUNC1(FUNC0(bev), 8 + 2);

		header = FUNC3(FUNC0(bev), NULL, EVBUFFER_EOL_CRLF);
		if (header == NULL)
			goto out;
		/* 0 chars */
		if (FUNC12(header, "0")) {
			FUNC11((void*)header);
			goto out;
		}
		FUNC11((void *)header);

		test_ok = 2;
	}

out:
	if (req)
		FUNC8(req);

	FUNC4(arg, NULL);
}