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
 scalar_t__ IVSZ ; 
 scalar_t__ KEYSZ ; 
 size_t FUNC0 (size_t,scalar_t__) ; 
 scalar_t__ RSBUFSZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  rs ; 
 int /*<<< orphan*/ * rs_buf ; 
 scalar_t__ rs_have ; 

__attribute__((used)) static inline void
FUNC4(u_char *dat, size_t datlen)
{
#ifndef KEYSTREAM_ONLY
	FUNC3(rs_buf, 0,RSBUFSZ);
#endif
	/* fill rs_buf with the keystream */
	FUNC2(&rs, rs_buf, rs_buf, RSBUFSZ);
	/* mix in optional user provided data */
	if (dat) {
		size_t i, m;

		m = FUNC0(datlen, KEYSZ + IVSZ);
		for (i = 0; i < m; i++)
			rs_buf[i] ^= dat[i];
	}
	/* immediately reinit for backtracking resistance */
	FUNC1(rs_buf, KEYSZ + IVSZ);
	FUNC3(rs_buf, 0, KEYSZ + IVSZ);
	rs_have = RSBUFSZ - KEYSZ - IVSZ;
}