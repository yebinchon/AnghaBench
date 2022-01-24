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
struct sockaddr_storage {int dummy; } ;
struct delegpt_ns {int got6; int got4; int resolved; } ;
struct delegpt {int /*<<< orphan*/  dp_type_mlc; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct delegpt*,struct sockaddr_storage*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct delegpt_ns* FUNC2 (struct delegpt*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct delegpt* dp, uint8_t* name, size_t namelen,
	struct sockaddr_storage* addr, socklen_t addrlen, uint8_t bogus,
	uint8_t lame)
{
	struct delegpt_ns* ns = FUNC2(dp, name, namelen);
	FUNC3(dp->dp_type_mlc);
	if(!ns) {
		/* ignore it */
		return 1;
	}
	if(!lame) {
		if(FUNC0(addr, addrlen))
			ns->got6 = 1;
		else	ns->got4 = 1;
		if(ns->got4 && ns->got6)
			ns->resolved = 1;
	}
	return FUNC1(dp, addr, addrlen, bogus, lame, NULL);
}