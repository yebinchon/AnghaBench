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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 size_t FUNC0 (size_t,scalar_t__) ; 
 scalar_t__ RSBUFSZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ rs_buf ; 
 scalar_t__ rs_have ; 

__attribute__((used)) static inline void
FUNC5(void *_buf, size_t n)
{
	u_char *buf = (u_char *)_buf;
	size_t m;

	FUNC2(n);
	while (n > 0) {
		if (rs_have > 0) {
			m = FUNC0(n, rs_have);
			FUNC3(buf, rs_buf + RSBUFSZ - rs_have, m);
			FUNC4(rs_buf + RSBUFSZ - rs_have, 0, m);
			buf += m;
			n -= m;
			rs_have -= m;
		}
		if (rs_have == 0)
			FUNC1(NULL, 0);
	}
}