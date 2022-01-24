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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct module_env {int dummy; } ;
struct auth_zones {int /*<<< orphan*/  lock; } ;
struct auth_xfer {int /*<<< orphan*/  lock; } ;
struct auth_master {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 struct auth_xfer* FUNC0 (struct auth_zones*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_xfer*,struct sockaddr_storage*,int /*<<< orphan*/ ,struct auth_master**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct auth_xfer*,struct module_env*,int,int /*<<< orphan*/ ,struct auth_master*) ; 

int FUNC7(struct auth_zones* az, struct module_env* env,
	uint8_t* nm, size_t nmlen, uint16_t dclass,
	struct sockaddr_storage* addr, socklen_t addrlen, int has_serial,
	uint32_t serial, int* refused)
{
	struct auth_xfer* xfr;
	struct auth_master* fromhost = NULL;
	/* see which zone this is */
	FUNC4(&az->lock);
	xfr = FUNC0(az, nm, nmlen, dclass);
	if(!xfr) {
		FUNC5(&az->lock);
		/* no such zone, refuse the notify */
		*refused = 1;
		return 0;
	}
	FUNC2(&xfr->lock);
	FUNC5(&az->lock);
	
	/* check access list for notifies */
	if(!FUNC1(xfr, addr, addrlen, &fromhost)) {
		FUNC3(&xfr->lock);
		/* notify not allowed, refuse the notify */
		*refused = 1;
		return 0;
	}

	/* process the notify */
	FUNC6(xfr, env, has_serial, serial, fromhost);
	return 1;
}