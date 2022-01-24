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
typedef  int uint16_t ;

/* Variables and functions */
 int FUNC0 (unsigned int,int) ; 
 unsigned int IB_MLIDS_IN_BLOCK ; 
 scalar_t__ brief ; 
 int /*<<< orphan*/  dump_all ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,int,char*,int) ; 

int FUNC3(char *str, int strlen, unsigned mlid, unsigned nports,
	      uint16_t mft[16][IB_MLIDS_IN_BLOCK])
{
	uint16_t mask;
	unsigned i, chunk, bit, nonzero = 0;

	if (brief) {
		int n = 0;
		unsigned chunks = FUNC0(nports + 1, 16) / 16;
		for (i = 0; i < chunks; i++) {
			mask = FUNC1(mft[i][mlid % IB_MLIDS_IN_BLOCK]);
			if (mask)
				nonzero++;
			n += FUNC2(str + n, strlen - n, "%04hx", mask);
			if (n >= strlen) {
				n = strlen;
				break;
			}
		}
		if (!nonzero && !dump_all) {
			str[0] = 0;
			return 0;
		}
		return n;
	}
	for (i = 0; i <= nports; i++) {
		chunk = i / 16;
		bit = i % 16;

		mask = FUNC1(mft[chunk][mlid % IB_MLIDS_IN_BLOCK]);
		if (mask)
			nonzero++;
		str[i * 2] = (mask & (1 << bit)) ? 'x' : ' ';
		str[i * 2 + 1] = ' ';
	}
	if (!nonzero && !dump_all) {
		str[0] = 0;
		return 0;
	}
	str[i * 2] = 0;
	return i * 2;
}