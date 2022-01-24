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
 size_t ETH_ALEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC1(u8 *array, size_t array_len, const u8 *bssid)
{
	size_t i;

	if (array == NULL || array_len == 0)
		return 0;

	for (i = 0; i < array_len; i++) {
		if (FUNC0(array + i * ETH_ALEN, bssid, ETH_ALEN) == 0)
			return 1;
	}

	return 0;
}