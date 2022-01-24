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
struct wpa_group {int /*<<< orphan*/ * Counter; int /*<<< orphan*/ * GMK; } ;
struct wpa_authenticator {unsigned long* addr; } ;
typedef  int /*<<< orphan*/  rkey ;
typedef  int /*<<< orphan*/  ptr ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPA_GMK_LEN ; 
 int WPA_NONCE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct wpa_authenticator *wpa_auth,
					  struct wpa_group *group)
{
	u8 buf[ETH_ALEN + 8 + sizeof(unsigned long)];
	u8 rkey[32];
	unsigned long ptr;

	if (FUNC2(group->GMK, WPA_GMK_LEN) < 0)
		return -1;
	FUNC5(MSG_DEBUG, "GMK", group->GMK, WPA_GMK_LEN);

	/*
	 * Counter = PRF-256(Random number, "Init Counter",
	 *                   Local MAC Address || Time)
	 */
	FUNC0(buf, wpa_auth->addr, ETH_ALEN);
	FUNC4(buf + ETH_ALEN);
	ptr = (unsigned long) group;
	FUNC0(buf + ETH_ALEN + 8, &ptr, sizeof(ptr));
#ifdef TEST_FUZZ
	os_memset(buf + ETH_ALEN, 0xab, 8);
	os_memset(buf + ETH_ALEN + 8, 0xcd, sizeof(ptr));
#endif /* TEST_FUZZ */
	if (FUNC2(rkey, sizeof(rkey)) < 0)
		return -1;

	if (FUNC3(rkey, sizeof(rkey), "Init Counter", buf, sizeof(buf),
		     group->Counter, WPA_NONCE_LEN) < 0)
		return -1;
	FUNC5(MSG_DEBUG, "Key Counter",
			group->Counter, WPA_NONCE_LEN);

	return 0;
}