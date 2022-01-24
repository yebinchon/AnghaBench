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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/ * ub_callback_type ;
struct ub_result {int answer_len; int /*<<< orphan*/ * answer_packet; int /*<<< orphan*/  rcode; } ;
struct ub_ctx {int /*<<< orphan*/  cfglock; int /*<<< orphan*/  num_async; int /*<<< orphan*/  queries; } ;
struct regional {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  key; } ;
struct ctx_query {TYPE_1__ node; struct ub_result* res; int /*<<< orphan*/ * msg; scalar_t__ msg_len; int /*<<< orphan*/  msg_security; void* cb_arg; int /*<<< orphan*/ * cb; scalar_t__ cancelled; int /*<<< orphan*/  async; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RCODE_SERVFAIL ; 
 scalar_t__ UB_LIBCMD_ANSWER ; 
 struct ctx_query* FUNC0 (struct ub_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ctx_query*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ub_result*,int /*<<< orphan*/ *,struct regional*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct regional* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct regional*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct ub_result*) ; 

__attribute__((used)) static int
FUNC17(struct ub_ctx* ctx, uint8_t* msg, uint32_t len,
	ub_callback_type* cb, void** cbarg, int* err,
	struct ub_result** res)
{
	struct ctx_query* q;
	if(FUNC2(msg, len) != UB_LIBCMD_ANSWER) {
		FUNC7("error: bad data from bg worker %d",
			(int)FUNC2(msg, len));
		return 0;
	}

	FUNC4(&ctx->cfglock);
	q = FUNC0(ctx, msg, len, err);
	if(!q) {
		FUNC5(&ctx->cfglock);
		/* probably simply the lookup that failed, i.e.
		 * response returned before cancel was sent out, so noerror */
		return 1;
	}
	FUNC6(q->async);

	/* grab cb while locked */
	if(q->cancelled) {
		*cb = NULL;
		*cbarg = NULL;
	} else {
		*cb = q->cb;
		*cbarg = q->cb_arg;
	}
	if(*err) {
		*res = NULL;
		FUNC16(q->res);
	} else {
		/* parse the message, extract rcode, fill result */
		sldns_buffer* buf = FUNC14(q->msg_len);
		struct regional* region = FUNC9();
		*res = q->res;
		(*res)->rcode = LDNS_RCODE_SERVFAIL;
		if(region && buf) {
			FUNC11(buf);
			FUNC15(buf, q->msg, q->msg_len);
			FUNC12(buf);
			FUNC3(*res, buf, region,
				q->msg_security);
		}
		(*res)->answer_packet = q->msg;
		(*res)->answer_len = (int)q->msg_len;
		q->msg = NULL;
		FUNC13(buf);
		FUNC10(region);
	}
	q->res = NULL;
	/* delete the q from list */
	(void)FUNC8(&ctx->queries, q->node.key);
	ctx->num_async--;
	FUNC1(q);
	FUNC5(&ctx->cfglock);

	if(*cb) return 2;
	FUNC16(*res);
	return 1;
}