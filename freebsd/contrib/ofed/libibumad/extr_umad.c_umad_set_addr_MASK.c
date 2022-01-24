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
struct TYPE_2__ {int sl; void* qkey; int /*<<< orphan*/  lid; void* qpn; } ;
struct ib_user_mad {TYPE_1__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int) ; 

int FUNC3(void *umad, int dlid, int dqp, int sl, int qkey)
{
	struct ib_user_mad *mad = umad;

	FUNC0("umad %p dlid %u dqp %d sl %d, qkey %x",
	      umad, dlid, dqp, sl, qkey);
	mad->addr.qpn = FUNC2(dqp);
	mad->addr.lid = FUNC1(dlid);
	mad->addr.qkey = FUNC2(qkey);
	mad->addr.sl = sl;

	return 0;
}