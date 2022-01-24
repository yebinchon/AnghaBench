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
struct evhttp_request {int /*<<< orphan*/  output_headers; int /*<<< orphan*/  input_headers; } ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int EVRPC_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (void*) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 

__attribute__((used)) static int
FUNC4(void *ctx, struct evhttp_request *req,
    struct evbuffer *evbuf, void *arg)
{
	const char *hook_type = arg;
	if (FUNC3("input", hook_type) == 0)
		FUNC1(req->input_headers, "X-Hook", hook_type);
	else
		FUNC1(req->output_headers, "X-Hook", hook_type);

	FUNC0(FUNC2(ctx) != NULL);

	return (EVRPC_CONTINUE);
}