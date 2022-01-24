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
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC2 (scalar_t__,int) ; 

Char  **
FUNC3(Char **v)
{
    Char **nv = FUNC2(FUNC1(v) + 1, sizeof(Char **));

    return (FUNC0(nv, v));
}