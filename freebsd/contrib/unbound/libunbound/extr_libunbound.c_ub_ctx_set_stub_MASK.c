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
struct config_stub {int isprime; int /*<<< orphan*/  addrs; struct config_stub* next; void* name; } ;
typedef  struct config_stub uint8_t ;
struct ub_ctx {int /*<<< orphan*/  cfglock; TYPE_2__* env; scalar_t__ finalized; } ;
struct sockaddr_storage {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
struct TYPE_4__ {TYPE_1__* cfg; } ;
struct TYPE_3__ {struct config_stub* stubs; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int UB_AFTERFINAL ; 
 int UB_NOERROR ; 
 int UB_NOMEM ; 
 int UB_SYNTAX ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct config_stub* FUNC2 (struct config_stub***,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct config_stub*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct sockaddr_storage*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct config_stub*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,struct config_stub**,size_t*,int*) ; 
 void* FUNC9 (char const*) ; 

int FUNC10(struct ub_ctx* ctx, const char* zone, const char* addr,
	int isprime)
{
	char* a;
	struct config_stub **prev, *elem;

	/* check syntax for zone name */
	if(zone) {
		uint8_t* nm;
		int nmlabs;
		size_t nmlen;
		if(!FUNC8(zone, &nm, &nmlen, &nmlabs)) {
			errno=EINVAL;
			return UB_SYNTAX;
		}
		FUNC5(nm);
	} else {
		zone = ".";
	}

	/* check syntax for addr (if not NULL) */
	if(addr) {
		struct sockaddr_storage storage;
		socklen_t stlen;
		if(!FUNC4(addr, &storage, &stlen)) {
			errno=EINVAL;
			return UB_SYNTAX;
		}
	}

	FUNC6(&ctx->cfglock);
	if(ctx->finalized) {
		FUNC7(&ctx->cfglock);
		errno=EINVAL;
		return UB_AFTERFINAL;
	}

	/* arguments all right, now find or add the stub */
	prev = &ctx->env->cfg->stubs;
	elem = FUNC2(&prev, zone);
	if(!elem && !addr) {
		/* not found and we want to delete, nothing to do */
		FUNC7(&ctx->cfglock);
		return UB_NOERROR;
	} else if(elem && !addr) {
		/* found, and we want to delete */
		*prev = elem->next;
		FUNC3(elem);
		FUNC7(&ctx->cfglock);
		return UB_NOERROR;
	} else if(!elem) {
		/* not found, create the stub entry */
		elem=(struct config_stub*)FUNC0(1, sizeof(struct config_stub));
		if(elem) elem->name = FUNC9(zone);
		if(!elem || !elem->name) {
			FUNC5(elem);
			FUNC7(&ctx->cfglock);
			errno = ENOMEM;
			return UB_NOMEM;
		}
		elem->next = ctx->env->cfg->stubs;
		ctx->env->cfg->stubs = elem;
	}

	/* add the address to the list and set settings */
	elem->isprime = isprime;
	a = FUNC9(addr);
	if(!a) {
		FUNC7(&ctx->cfglock);
		errno = ENOMEM;
		return UB_NOMEM;
	}
	if(!FUNC1(&elem->addrs, a)) {
		FUNC7(&ctx->cfglock);
		errno = ENOMEM;
		return UB_NOMEM;
	}
	FUNC7(&ctx->cfglock);
	return UB_NOERROR;
}