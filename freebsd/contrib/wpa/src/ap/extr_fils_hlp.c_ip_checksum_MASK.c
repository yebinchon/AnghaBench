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
typedef  int u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int const) ; 

__attribute__((used)) static be16 FUNC2(const void *buf, size_t len)
{
	u32 sum = 0;
	const u16 *pos;

	for (pos = buf; len >= 2; len -= 2)
		sum += FUNC1(*pos++);
	if (len)
		sum += FUNC1(*pos << 8);

	sum = (sum >> 16) + (sum & 0xffff);
	sum += sum >> 16;
	return FUNC0(~sum);
}