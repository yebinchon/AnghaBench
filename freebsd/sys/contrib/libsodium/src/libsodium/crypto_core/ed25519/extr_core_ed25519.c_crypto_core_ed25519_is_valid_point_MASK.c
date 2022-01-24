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
typedef  int /*<<< orphan*/  ge25519_p3 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char const*) ; 
 scalar_t__ FUNC1 (unsigned char const*) ; 
 scalar_t__ FUNC2 (unsigned char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(const unsigned char *p)
{
    ge25519_p3 p_p3;

    if (FUNC2(p) == 0 ||
        FUNC1(p) != 0 ||
        FUNC0(&p_p3, p) != 0 ||
        FUNC3(&p_p3) == 0 ||
        FUNC4(&p_p3) == 0) {
        return 0;
    }
    return 1;
}