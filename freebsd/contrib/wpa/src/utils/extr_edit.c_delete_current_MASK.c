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

/* Variables and functions */
 scalar_t__ cmdbuf ; 
 scalar_t__ cmdbuf_len ; 
 scalar_t__ cmdbuf_pos ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(void)
{
	if (cmdbuf_pos == cmdbuf_len)
		return;

	FUNC0();
	FUNC2(cmdbuf + cmdbuf_pos, cmdbuf + cmdbuf_pos + 1,
		   cmdbuf_len - cmdbuf_pos);
	cmdbuf_len--;
	FUNC1();
}