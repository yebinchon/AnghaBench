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

/* Variables and functions */
 int STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 double FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usertime ; 

__attribute__((used)) static double FUNC2(int s)
{
    double ret = FUNC1(s, usertime);
    if (s == STOP)
        FUNC0(0);
    return ret;
}