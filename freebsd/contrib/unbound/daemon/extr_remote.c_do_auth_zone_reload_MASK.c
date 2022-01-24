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
struct TYPE_2__ {int /*<<< orphan*/  cfg; struct auth_zones* auth_zones; } ;
struct worker {TYPE_1__ env; } ;
struct auth_zones {int /*<<< orphan*/  lock; } ;
struct auth_zone {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 struct auth_zone* FUNC0 (struct auth_zones*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_zone*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void
FUNC9(RES* ssl, struct worker* worker, char* arg)
{
	size_t nmlen;
	int nmlabs;
	uint8_t* nm = NULL;
	struct auth_zones* az = worker->env.auth_zones;
	struct auth_zone* z = NULL;
	if(!FUNC6(ssl, arg, &nm, &nmlen, &nmlabs))
		return;
	if(az) {
		FUNC3(&az->lock);
		z = FUNC0(az, nm, nmlen, LDNS_RR_CLASS_IN);
		if(z) {
			FUNC5(&z->lock);
		}
		FUNC4(&az->lock);
	}
	FUNC2(nm);
	if(!z) {
		(void)FUNC8(ssl, "error no auth-zone %s\n", arg);
		return;
	}
	if(!FUNC1(z, worker->env.cfg)) {
		FUNC4(&z->lock);
		(void)FUNC8(ssl, "error failed to read %s\n", arg);
		return;
	}
	FUNC4(&z->lock);
	FUNC7(ssl);
}