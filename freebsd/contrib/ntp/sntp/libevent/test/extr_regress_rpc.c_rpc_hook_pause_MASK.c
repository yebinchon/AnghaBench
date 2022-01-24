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
typedef  int /*<<< orphan*/  tv ;
struct timeval {int dummy; } ;
struct rpc_hook_ctx_ {void* ctx; void* vbase; } ;
struct evhttp_request {int dummy; } ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int EVRPC_PAUSE ; 
 int /*<<< orphan*/  EV_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rpc_hook_ctx_*,struct timeval*) ; 
 struct rpc_hook_ctx_* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rpc_hook_pause_cb ; 

__attribute__((used)) static int
FUNC4(void *ctx, struct evhttp_request *req, struct evbuffer *evbuf,
    void *arg)
{
	struct rpc_hook_ctx_ *tmp = FUNC2(sizeof(*tmp));
	struct timeval tv;

	FUNC0(tmp != NULL);
	tmp->vbase = arg;
	tmp->ctx = ctx;

	FUNC3(&tv, 0, sizeof(tv));
	FUNC1(-1, EV_TIMEOUT, rpc_hook_pause_cb, tmp, &tv);
	return EVRPC_PAUSE;
}