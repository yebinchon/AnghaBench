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
typedef  char const* uint32_t ;
struct buf_pr {int dummy; } ;

/* Variables and functions */
 char const* IP_FW_TARG ; 
 int /*<<< orphan*/  FUNC0 (struct buf_pr*,char*,...) ; 

void
FUNC1(struct buf_pr *bp, const char *str, uint32_t arg)
{

	if (str != NULL)
		FUNC0(bp, "%s", str);
	if (arg == IP_FW_TARG)
		FUNC0(bp, "tablearg");
	else
		FUNC0(bp, "%u", arg);
}