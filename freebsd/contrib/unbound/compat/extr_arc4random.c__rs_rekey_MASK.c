#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_4__ {int rs_have; } ;
struct TYPE_3__ {int /*<<< orphan*/ * rs_buf; int /*<<< orphan*/  rs_chacha; } ;

/* Variables and functions */
 int IVSZ ; 
 int KEYSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* rs ; 
 TYPE_1__* rsx ; 

__attribute__((used)) static inline void
FUNC4(u_char *dat, size_t datlen)
{
#ifndef KEYSTREAM_ONLY
	FUNC3(rsx->rs_buf, 0, sizeof(rsx->rs_buf));
#endif
	/* fill rs_buf with the keystream */
	FUNC2(&rsx->rs_chacha, rsx->rs_buf,
	    rsx->rs_buf, sizeof(rsx->rs_buf));
	/* mix in optional user provided data */
	if (dat) {
		size_t i, m;

		m = FUNC1(datlen, KEYSZ + IVSZ);
		for (i = 0; i < m; i++)
			rsx->rs_buf[i] ^= dat[i];
	}
	/* immediately reinit for backtracking resistance */
	FUNC0(rsx->rs_buf, KEYSZ + IVSZ);
	FUNC3(rsx->rs_buf, 0, KEYSZ + IVSZ);
	rs->rs_have = sizeof(rsx->rs_buf) - KEYSZ - IVSZ;
}