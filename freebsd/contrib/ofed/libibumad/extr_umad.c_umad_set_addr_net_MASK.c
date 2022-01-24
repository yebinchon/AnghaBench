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
typedef  void* __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

int FUNC3(void *umad, __be16 dlid, __be32 dqp, int sl, __be32 qkey)
{
	struct ib_user_mad *mad = umad;

	FUNC0("umad %p dlid %u dqp %d sl %d qkey %x",
	      umad, FUNC1(dlid), FUNC2(dqp), sl, FUNC2(qkey));
	mad->addr.qpn = dqp;
	mad->addr.lid = dlid;
	mad->addr.qkey = qkey;
	mad->addr.sl = sl;

	return 0;
}