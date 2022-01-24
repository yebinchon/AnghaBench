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
typedef  int /*<<< orphan*/  u_int32_t ;

/* Variables and functions */
 scalar_t__ RSBUFSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ rs_buf ; 
 int rs_have ; 

__attribute__((used)) static inline void
FUNC4(u_int32_t *val)
{
	FUNC1(sizeof(*val));
	if (rs_have < sizeof(*val))
		FUNC0(NULL, 0);
	FUNC2(val, rs_buf + RSBUFSZ - rs_have, sizeof(*val));
	FUNC3(rs_buf + RSBUFSZ - rs_have, 0, sizeof(*val));
	rs_have -= sizeof(*val);
	return;
}