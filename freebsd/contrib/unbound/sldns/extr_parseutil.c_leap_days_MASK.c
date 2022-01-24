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
 int FUNC0 (int,int) ; 

__attribute__((used)) static int
FUNC1(int y1, int y2)
{
	--y1;
	--y2;
	return (FUNC0(y2,   4) - FUNC0(y1,   4)) - 
	       (FUNC0(y2, 100) - FUNC0(y1, 100)) +
	       (FUNC0(y2, 400) - FUNC0(y1, 400));
}