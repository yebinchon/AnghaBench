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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC2(const u8 *auth_challenge,
				const u8 *peer_challenge,
				const u8 *username, size_t username_len,
				const u8 *password_hash,
				u8 *response)
{
	u8 challenge[8];

	if (FUNC0(peer_challenge, auth_challenge,
			   username, username_len,
			   challenge) ||
	    FUNC1(challenge, password_hash, response))
		return -1;
	return 0;
}