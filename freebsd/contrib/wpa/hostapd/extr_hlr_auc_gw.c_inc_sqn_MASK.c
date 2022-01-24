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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int ind_len ; 

__attribute__((used)) static void FUNC4(u8 *sqn)
{
	u64 val, seq, ind;

	/*
	 * SQN = SEQ | IND = SEQ1 | SEQ2 | IND
	 *
	 * The mechanism used here is not time-based, so SEQ2 is void and
	 * SQN = SEQ1 | IND. The length of IND is ind_len bits and the length
	 * of SEQ1 is 48 - ind_len bits.
	 */

	/* Increment both SEQ and IND by one */
	val = ((u64) FUNC1(sqn) << 16) | ((u64) FUNC0(sqn + 4));
	seq = (val >> ind_len) + 1;
	ind = (val + 1) & ((1 << ind_len) - 1);
	val = (seq << ind_len) | ind;
	FUNC3(sqn, val >> 16);
	FUNC2(sqn + 4, val & 0xffff);
}