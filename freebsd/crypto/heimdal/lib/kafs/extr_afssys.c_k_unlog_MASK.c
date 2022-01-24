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
struct ViceIoctl {int dummy; } ;
typedef  int /*<<< orphan*/  parms ;

/* Variables and functions */
 int /*<<< orphan*/  VIOCUNLOG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ViceIoctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ViceIoctl*,int /*<<< orphan*/ ,int) ; 

int
FUNC2(void)
{
    struct ViceIoctl parms;
    FUNC1(&parms, 0, sizeof(parms));
    return FUNC0(0, VIOCUNLOG, &parms, 0);
}