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
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
    extern unsigned int OPENSSL_ia32cap_P[];

    if (OPENSSL_ia32cap_P[1] & (1 << (62 - 32))) {
        ENGINE *toadd = FUNC2();
        if (!toadd)
            return;
        FUNC0(toadd);
        FUNC1(toadd);
        FUNC3();
    }
}