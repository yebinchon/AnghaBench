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
struct iaddr {scalar_t__ len; int /*<<< orphan*/  iabuf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC1(struct iaddr addr1, struct iaddr addr2)
{
	if (addr1.len != addr2.len)
		return (0);
	return (FUNC0(addr1.iabuf, addr2.iabuf, addr1.len) == 0);
}