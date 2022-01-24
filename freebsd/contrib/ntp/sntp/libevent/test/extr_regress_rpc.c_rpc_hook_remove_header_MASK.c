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
struct evhttp_request {int /*<<< orphan*/  input_headers; } ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int EVRPC_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (void*,char*,void**,size_t*) ; 
 int /*<<< orphan*/ * FUNC5 (void*) ; 
 scalar_t__ FUNC6 (char const*,void*) ; 

__attribute__((used)) static int
FUNC7(void *ctx, struct evhttp_request *req,
    struct evbuffer *evbuf, void *arg)
{
	const char *header = FUNC2(req->input_headers, "X-Hook");
	void *data = NULL;
	size_t data_len = 0;

	FUNC0(header != NULL);
	FUNC0(FUNC6(header, arg) == 0);

	FUNC3(req->input_headers, "X-Hook");
	FUNC1(req->input_headers, "X-Pool-Hook", "ran");

	FUNC0(FUNC4(ctx, "meta", &data, &data_len) == 0);
	FUNC0(data != NULL);
	FUNC0(data_len == 5);

	FUNC0(FUNC5(ctx) != NULL);

	return (EVRPC_CONTINUE);
}