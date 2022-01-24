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
struct evrpc_request_wrapper {void (* cb ) (struct evrpc_status*,void*,void*,void*) ;void (* request_marshal ) (struct evbuffer*,void*) ;void (* reply_clear ) (void*) ;int (* reply_unmarshal ) (void*,struct evbuffer*) ;void* reply; void* request; void* cb_arg; int /*<<< orphan*/ * name; int /*<<< orphan*/ * evcon; int /*<<< orphan*/ * hook_meta; struct evrpc_pool* pool; } ;
struct evrpc_pool {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evrpc_request_wrapper*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 

struct evrpc_request_wrapper *
FUNC3(
	struct evrpc_pool *pool, void *request, void *reply,
	const char *rpcname,
	void (*req_marshal)(struct evbuffer*, void *),
	void (*rpl_clear)(void *),
	int (*rpl_unmarshal)(void *, struct evbuffer *),
	void (*cb)(struct evrpc_status *, void *, void *, void *),
	void *cbarg)
{
	struct evrpc_request_wrapper *ctx = (struct evrpc_request_wrapper *)
	    FUNC1(sizeof(struct evrpc_request_wrapper));
	if (ctx == NULL)
		return (NULL);

	ctx->pool = pool;
	ctx->hook_meta = NULL;
	ctx->evcon = NULL;
	ctx->name = FUNC2(rpcname);
	if (ctx->name == NULL) {
		FUNC0(ctx);
		return (NULL);
	}
	ctx->cb = cb;
	ctx->cb_arg = cbarg;
	ctx->request = request;
	ctx->reply = reply;
	ctx->request_marshal = req_marshal;
	ctx->reply_clear = rpl_clear;
	ctx->reply_unmarshal = rpl_unmarshal;

	return (ctx);
}