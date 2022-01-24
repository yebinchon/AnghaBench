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
struct p2p_srv_upnp {struct p2p_srv_upnp* service; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_srv_upnp*) ; 

__attribute__((used)) static void FUNC2(struct p2p_srv_upnp *usrv)
{
	FUNC0(&usrv->list);
	FUNC1(usrv->service);
	FUNC1(usrv);
}