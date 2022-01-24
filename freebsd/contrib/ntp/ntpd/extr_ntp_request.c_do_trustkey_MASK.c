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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_long ;
struct req_pkt {int /*<<< orphan*/  u; int /*<<< orphan*/  err_nitems; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;
typedef  int /*<<< orphan*/  endpt ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFO_OKAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct req_pkt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(
	sockaddr_u *srcadr,
	endpt *inter,
	struct req_pkt *inpkt,
	u_long trust
	)
{
	register uint32_t *kp;
	register int items;

	items = FUNC0(inpkt->err_nitems);
	kp = (uint32_t *)&inpkt->u;
	while (items-- > 0) {
		FUNC1(*kp, trust);
		kp++;
	}

	FUNC2(srcadr, inter, inpkt, INFO_OKAY);
}