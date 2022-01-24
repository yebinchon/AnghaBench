#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_3__ {int /*<<< orphan*/  lb; scalar_t__ ai; scalar_t__ lno; } ;
typedef  TYPE_1__ TEXT ;
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  ARG_CHAR_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_NUMBER ; 
 int /*<<< orphan*/  TXT_AUTOINDENT ; 
 int /*<<< orphan*/  TXT_NUMBER ; 
 int /*<<< orphan*/  TXT_PROMPT ; 
 int /*<<< orphan*/  WVS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,...) ; 

__attribute__((used)) static void
FUNC4(SCR *sp, TEXT *tp, ARG_CHAR_T prompt, u_int32_t flags)
{
	/* Display the prompt. */
	if (FUNC0(TXT_PROMPT))
		(void)FUNC3(sp, "%c", prompt);

	/* Display the line number. */
	if (FUNC0(TXT_NUMBER) && FUNC1(sp, O_NUMBER))
		(void)FUNC3(sp, "%6lu  ", (u_long)tp->lno);

	/* Print out autoindent string. */
	if (FUNC0(TXT_AUTOINDENT))
		(void)FUNC3(sp, WVS, (int)tp->ai, tp->lb);
	(void)FUNC2(sp);
}