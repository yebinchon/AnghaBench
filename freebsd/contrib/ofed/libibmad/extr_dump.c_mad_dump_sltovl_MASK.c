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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  ib_slvl_table_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int*) ; 
 int FUNC1 (char*,int,char*,...) ; 

void FUNC2(char *buf, int bufsz, void *val, int valsz)
{
	ib_slvl_table_t *p_slvl_tbl = val;
	uint8_t vl;
	int i, n = 0;
	n = FUNC1(buf, bufsz, "|");
	for (i = 0; i < 16; i++) {
		FUNC0(p_slvl_tbl, i, &vl);
		n += FUNC1(buf + n, bufsz - n, "%2u|", vl);
		if (n >= bufsz)
			break;
	}
	FUNC1(buf + n, bufsz - n, "\n");
}