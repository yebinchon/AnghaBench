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
typedef  int /*<<< orphan*/  u8 ;
struct fst_session {int dummy; } ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int ETH_ALEN ; 
 int FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fst_session*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(struct fst_session *s, const char *mac,
				  Boolean is_old)
{
	u8 peer_addr[ETH_ALEN];
	int res = FUNC0(mac, peer_addr);

	if (res)
		return res;

	FUNC1(s, peer_addr, is_old);

	return 0;
}