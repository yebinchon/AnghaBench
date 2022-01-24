#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct ub_ctx {TYPE_1__* local_zones; } ;
struct local_zone {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int UB_NOERROR ; 
 int UB_SYNTAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct local_zone*) ; 
 struct local_zone* FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ **,size_t*,int*) ; 
 int FUNC6 (struct ub_ctx*) ; 

int FUNC7(struct ub_ctx* ctx, const char *zone_name)
{   
	struct local_zone* z;
	uint8_t* nm;
	int nmlabs;
	size_t nmlen;

	int res = FUNC6(ctx);
	if (res) return res;

	if(!FUNC5(zone_name, &nm, &nmlen, &nmlabs)) {
		return UB_SYNTAX;
	}

	FUNC4(&ctx->local_zones->lock);
	if((z=FUNC2(ctx->local_zones, nm, nmlen, nmlabs, 
		LDNS_RR_CLASS_IN))) {
		/* present in tree */
		FUNC1(ctx->local_zones, z);
	}
	FUNC3(&ctx->local_zones->lock);
	FUNC0(nm);
	return UB_NOERROR;
}