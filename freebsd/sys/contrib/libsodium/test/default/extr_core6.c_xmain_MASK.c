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
 scalar_t__ c ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ in ; 
 int /*<<< orphan*/  k ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3(void)
{
    FUNC0(out, in, k, c);
    FUNC1(out, c);
    FUNC1(out + 20, c + 4);
    FUNC2("\n");
    FUNC1(out + 40, c + 8);
    FUNC1(out + 60, c + 12);
    FUNC2("\n");
    FUNC1(out + 24, in);
    FUNC1(out + 28, in + 4);
    FUNC2("\n");
    FUNC1(out + 32, in + 8);
    FUNC1(out + 36, in + 12);
    FUNC2("\n");

    return 0;
}