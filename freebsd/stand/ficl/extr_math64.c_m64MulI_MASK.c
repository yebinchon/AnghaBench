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
typedef  int /*<<< orphan*/  FICL_INT ;
typedef  int /*<<< orphan*/  DPUNS ;
typedef  int /*<<< orphan*/  DPINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

DPINT FUNC3(FICL_INT x, FICL_INT y)
{
    DPUNS prod;
    int sign = 1;

    if (x < 0)
    {
        sign = -sign;
        x = -x;
    }

    if (y < 0)
    {
        sign = -sign;
        y = -y;
    }

    prod = FUNC0(x, y);
    if (sign > 0)
        return FUNC1(prod);
    else
        return FUNC2(FUNC1(prod));
}