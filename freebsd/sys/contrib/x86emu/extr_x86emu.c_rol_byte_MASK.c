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
struct x86emu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_CF ; 
 int /*<<< orphan*/  F_OF ; 
 scalar_t__ FUNC1 (unsigned int) ; 

__attribute__((used)) static uint8_t 
FUNC2(struct x86emu *emu, uint8_t d, uint8_t s)
{
	unsigned int res, cnt, mask;

	/* rotate left */
	/* s is the rotate distance.  It varies from 0 - 8. d is the byte
	 * object rotated.
	 * 
	 * have
	 * 
	 * CF  B_7 ... B_0
	 * 
	 * The new rotate is done mod 8. Much simpler than the "rcl" or "rcr"
	 * operations.
	 * 
	 * IF n > 0 1) B_(7) .. B_(n)  <-  b_(8-(n+1)) .. b_(0) 2) B_(n-1) ..
	 * B_(0) <-  b_(7) .. b_(8-n) */
	res = d;
	if ((cnt = s % 8) != 0) {
		/* B_(7) .. B_(n)  <-  b_(8-(n+1)) .. b_(0) */
		res = (d << cnt);

		/* B_(n-1) .. B_(0) <-  b_(7) .. b_(8-n) */
		mask = (1 << cnt) - 1;
		res |= (d >> (8 - cnt)) & mask;

		/* OVERFLOW is set *IFF* s==1, then it is the xor of CF and
		 * the most significant bit.  Blecck. */
		FUNC0(s == 1 &&
		    FUNC1((res & 0x1) + ((res >> 6) & 0x2)),
		    F_OF);
	}
	if (s != 0) {
		/* set the new carry flag, Note that it is the low order bit
		 * of the result!!!                               */
		FUNC0(res & 0x1, F_CF);
	}
	return (uint8_t) res;
}