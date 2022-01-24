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
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t const) ; 
 scalar_t__ FUNC3 () ; 

int FUNC4(size_t num_elem, const u8 *addr[], const size_t *len, u8 *mac)
{
	MD5_CTX ctx;
	size_t i;

	if (FUNC3())
		return -1;

	FUNC1(&ctx);
	for (i = 0; i < num_elem; i++)
		FUNC2(&ctx, addr[i], len[i]);
	FUNC0(mac, &ctx);
	return 0;
}