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
typedef  int /*<<< orphan*/  word32 ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  Hmac ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t const) ; 

__attribute__((used)) static int FUNC4(int type, const u8 *key,
			       size_t key_len, size_t num_elem,
			       const u8 *addr[], const size_t *len, u8 *mac,
			       unsigned int mdlen)
{
	Hmac hmac;
	size_t i;

	(void) mdlen;

	if (FUNC0())
		return -1;

	if (FUNC2(&hmac, type, key, (word32) key_len) != 0)
		return -1;
	for (i = 0; i < num_elem; i++)
		if (FUNC3(&hmac, addr[i], len[i]) != 0)
			return -1;
	if (FUNC1(&hmac, mac) != 0)
		return -1;
	return 0;
}