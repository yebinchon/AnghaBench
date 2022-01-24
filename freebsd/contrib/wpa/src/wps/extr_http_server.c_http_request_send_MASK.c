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
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct http_request {int /*<<< orphan*/  fd; TYPE_1__ cli; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 size_t FUNC7 (struct wpabuf*) ; 

void FUNC8(struct http_request *req, struct wpabuf *resp)
{
	int res;

	FUNC4(MSG_DEBUG, "HTTP: Send %lu byte response to %s:%d",
		   (unsigned long) FUNC7(resp),
		   FUNC0(req->cli.sin_addr),
		   FUNC1(req->cli.sin_port));

	res = FUNC2(req->fd, FUNC6(resp), FUNC7(resp), 0);
	if (res < 0) {
		FUNC4(MSG_DEBUG, "HTTP: Send failed: %s",
			   FUNC3(errno));
	} else if ((size_t) res < FUNC7(resp)) {
		FUNC4(MSG_DEBUG, "HTTP: Sent only %d of %lu bytes",
			   res, (unsigned long) FUNC7(resp));
		/* TODO: add eloop handler for sending rest of the data */
	}

	FUNC5(resp);
}