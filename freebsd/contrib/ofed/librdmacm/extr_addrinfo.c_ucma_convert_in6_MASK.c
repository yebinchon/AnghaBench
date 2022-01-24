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
struct TYPE_2__ {int /*<<< orphan*/ * s6_addr32; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_scope_id; TYPE_1__ sin6_addr; int /*<<< orphan*/  sin6_flowinfo; } ;
struct sockaddr_ib {int /*<<< orphan*/  sib_scope_id; int /*<<< orphan*/  sib_addr; int /*<<< orphan*/  sib_flowinfo; int /*<<< orphan*/  sib_pkey; int /*<<< orphan*/  sib_family; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_IB ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct sockaddr_ib* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct sockaddr*,struct sockaddr_ib*) ; 

__attribute__((used)) static int FUNC5(int ps, struct sockaddr_ib **dst, socklen_t *dst_len,
			    struct sockaddr_in6 *src, socklen_t src_len)
{
	*dst = FUNC1(1, sizeof(struct sockaddr_ib));
	if (!(*dst))
		return FUNC0(ENOMEM);

	(*dst)->sib_family = AF_IB;
	(*dst)->sib_pkey = FUNC2(0xFFFF);
	(*dst)->sib_flowinfo = src->sin6_flowinfo;
	FUNC3(&(*dst)->sib_addr, src->sin6_addr.s6_addr32[0],
		    src->sin6_addr.s6_addr32[1], src->sin6_addr.s6_addr32[2],
		    src->sin6_addr.s6_addr32[3]);
	FUNC4(ps, (struct sockaddr *) src, *dst);
	(*dst)->sib_scope_id = src->sin6_scope_id;

	*dst_len = sizeof(struct sockaddr_ib);
	return 0;
}