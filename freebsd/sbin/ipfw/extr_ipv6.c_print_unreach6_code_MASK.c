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
typedef  char const* uint16_t ;
struct buf_pr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf_pr*,char*,char const*) ; 
 int /*<<< orphan*/  icmp6codes ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*) ; 

void
FUNC2(struct buf_pr *bp, uint16_t code)
{
	char const *s = FUNC1(icmp6codes, code);

	if (s != NULL)
		FUNC0(bp, "unreach6 %s", s);
	else
		FUNC0(bp, "unreach6 %u", code);
}