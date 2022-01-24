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
typedef  int /*<<< orphan*/  RETSIGTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  SIGSYS ; 
 int /*<<< orphan*/  catch_SIGSYS ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int)) ; 

__attribute__((used)) static RETSIGTYPE
FUNC2(int sig)
{
    errno = 0;
    FUNC1(SIGSYS, SIGSYS_handler); /* Need to reinstall handler on SYSV */
    FUNC0(catch_SIGSYS, 1);
}