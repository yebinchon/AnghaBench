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
struct TYPE_2__ {scalar_t__ anchors; } ;
struct worker {TYPE_1__ env; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC5(RES* ssl, struct worker* worker, char* arg)
{
	size_t nmlen;
	int nmlabs;
	uint8_t* nm = NULL;
	if(!FUNC2(ssl, arg, &nm, &nmlen, &nmlabs))
		return;
	if(worker->env.anchors) {
		if(!FUNC0(worker->env.anchors,
			LDNS_RR_CLASS_IN, nm)) {
			(void)FUNC4(ssl, "error out of memory\n");
			FUNC1(nm);
			return;
		}
	}
	FUNC1(nm);
	FUNC3(ssl);
}