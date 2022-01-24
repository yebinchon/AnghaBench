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
struct kill {int dummy; } ;
struct evhttp_request {scalar_t__ response_code; int /*<<< orphan*/  input_buffer; } ;

/* Variables and functions */
 scalar_t__ HTTP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct kill*) ; 
 struct kill* FUNC4 () ; 
 int FUNC5 (struct kill*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int test_ok ; 

__attribute__((used)) static void
FUNC6(struct evhttp_request *req, void *arg)
{
	struct kill* kill_reply = NULL;

	if (req->response_code != HTTP_OK) {
		FUNC2(stderr, "FAILED (response code)\n");
		FUNC1(1);
	}

	kill_reply = FUNC4();

	if ((FUNC5(kill_reply, req->input_buffer)) == -1) {
		FUNC2(stderr, "FAILED (unmarshal)\n");
		FUNC1(1);
	}

	FUNC3(kill_reply);

	test_ok = 1;
	FUNC0(NULL);
}