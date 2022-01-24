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
typedef  int /*<<< orphan*/  wc_Md5 ;
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t const) ; 

int FUNC4(size_t num_elem, const u8 *addr[], const size_t *len, u8 *mac)
{
	wc_Md5 md5;
	size_t i;

	if (FUNC0())
		return -1;

	FUNC1(&md5);

	for (i = 0; i < num_elem; i++)
		FUNC3(&md5, addr[i], len[i]);

	FUNC2(&md5, mac);

	return 0;
}