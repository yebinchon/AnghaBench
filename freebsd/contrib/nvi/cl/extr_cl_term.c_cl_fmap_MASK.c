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
typedef  int /*<<< orphan*/  seq_t ;
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_EX ; 
 int /*<<< orphan*/  SC_SCR_EX ; 
 int /*<<< orphan*/  SC_SCR_VI ; 
 int /*<<< orphan*/  SC_VI ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t) ; 

int
FUNC2(SCR *sp, seq_t stype, CHAR_T *from, size_t flen, CHAR_T *to, size_t tlen)
{
	/* Ignore until the screen is running, do the real work then. */
	if (FUNC0(sp, SC_VI) && !FUNC0(sp, SC_SCR_VI))
		return (0);
	if (FUNC0(sp, SC_EX) && !FUNC0(sp, SC_SCR_EX))
		return (0);

	return (FUNC1(sp, stype, from, flen, to, tlen));
}