#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ub_ctx {int /*<<< orphan*/  cfglock; TYPE_2__* env; scalar_t__ finalized; } ;
struct sockaddr_storage {int dummy; } ;
struct config_stub {int /*<<< orphan*/  addrs; struct config_stub* next; void* name; } ;
typedef  int /*<<< orphan*/  socklen_t ;
struct TYPE_4__ {TYPE_1__* cfg; } ;
struct TYPE_3__ {struct config_stub* forwards; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int UB_AFTERFINAL ; 
 int UB_NOERROR ; 
 int UB_NOMEM ; 
 int UB_SYNTAX ; 
 struct config_stub* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct config_stub*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct sockaddr_storage*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct config_stub*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct config_stub*) ; 
 scalar_t__ FUNC8 (void*,char*) ; 
 void* FUNC9 (char const*) ; 

int 
FUNC10(struct ub_ctx* ctx, const char* addr)
{
	struct sockaddr_storage storage;
	socklen_t stlen;
	struct config_stub* s;
	char* dupl;
	FUNC5(&ctx->cfglock);
	if(ctx->finalized) {
		FUNC6(&ctx->cfglock);
		errno=EINVAL;
		return UB_AFTERFINAL;
	}
	if(!addr) {
		/* disable fwd mode - the root stub should be first. */
		if(ctx->env->cfg->forwards &&
			FUNC8(ctx->env->cfg->forwards->name, ".") == 0) {
			s = ctx->env->cfg->forwards;
			ctx->env->cfg->forwards = s->next;
			s->next = NULL;
			FUNC2(s);
		}
		FUNC6(&ctx->cfglock);
		return UB_NOERROR;
	}
	FUNC6(&ctx->cfglock);

	/* check syntax for addr */
	if(!FUNC3(addr, &storage, &stlen)) {
		errno=EINVAL;
		return UB_SYNTAX;
	}
	
	/* it parses, add root stub in front of list */
	FUNC5(&ctx->cfglock);
	if(!ctx->env->cfg->forwards ||
		FUNC8(ctx->env->cfg->forwards->name, ".") != 0) {
		s = FUNC0(1, sizeof(*s));
		if(!s) {
			FUNC6(&ctx->cfglock);
			errno=ENOMEM;
			return UB_NOMEM;
		}
		s->name = FUNC9(".");
		if(!s->name) {
			FUNC4(s);
			FUNC6(&ctx->cfglock);
			errno=ENOMEM;
			return UB_NOMEM;
		}
		s->next = ctx->env->cfg->forwards;
		ctx->env->cfg->forwards = s;
	} else {
		FUNC7(ctx->env->cfg->forwards);
		s = ctx->env->cfg->forwards;
	}
	dupl = FUNC9(addr);
	if(!dupl) {
		FUNC6(&ctx->cfglock);
		errno=ENOMEM;
		return UB_NOMEM;
	}
	if(!FUNC1(&s->addrs, dupl)) {
		FUNC6(&ctx->cfglock);
		errno=ENOMEM;
		return UB_NOMEM;
	}
	FUNC6(&ctx->cfglock);
	return UB_NOERROR;
}