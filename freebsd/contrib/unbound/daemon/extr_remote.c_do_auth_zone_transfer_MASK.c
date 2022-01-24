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
struct TYPE_2__ {struct auth_zones* auth_zones; } ;
struct worker {TYPE_1__ env; } ;
struct auth_zones {int dummy; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  FUNC0 (struct auth_zones*,TYPE_1__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void
FUNC4(RES* ssl, struct worker* worker, char* arg)
{
	size_t nmlen;
	int nmlabs;
	uint8_t* nm = NULL;
	struct auth_zones* az = worker->env.auth_zones;
	if(!FUNC1(ssl, arg, &nm, &nmlen, &nmlabs))
		return;
	if(!az || !FUNC0(az, &worker->env, nm, nmlen,
		LDNS_RR_CLASS_IN)) {
		(void)FUNC3(ssl, "error zone xfr task not found %s\n", arg);
		return;
	}
	FUNC2(ssl);
}