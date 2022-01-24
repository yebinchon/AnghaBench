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
struct ub_ctx {int dummy; } ;

/* Variables and functions */
 int LDNS_RR_TYPE_A ; 
 int LDNS_RR_TYPE_AAAA ; 
 int LDNS_RR_TYPE_MX ; 
 int /*<<< orphan*/  FUNC0 (struct ub_ctx*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char const*,int*) ; 
 int FUNC4 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ub_ctx*) ; 

__attribute__((used)) static void
FUNC6(struct ub_ctx* ctx, const char* nm, const char* qt, const char* qc)
{
	/* massage input into a query name, type and class */
	int multi = 0;	 /* no type, so do A, AAAA, MX */
	int reverse = 0; /* we are doing a reverse lookup */
	char* realq = FUNC3(nm, &reverse);
	int t = FUNC4(qt, reverse, &multi);
	int c = FUNC2(qc);

	/* perform the query */
	if(multi) {
		if(!FUNC0(ctx, realq, LDNS_RR_TYPE_A, c, 1)) {
			/* domain exists, lookup more */
			(void)FUNC0(ctx, realq, LDNS_RR_TYPE_AAAA, c, 0);
			(void)FUNC0(ctx, realq, LDNS_RR_TYPE_MX, c, 0);
		}
	} else {
		(void)FUNC0(ctx, realq, t, c, 1);
	}
	FUNC5(ctx);
	FUNC1(realq);
}