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
typedef  int /*<<< orphan*/  MINT ;
typedef  int /*<<< orphan*/  DesData ;

/* Variables and functions */
 int KEYSIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,short,int /*<<< orphan*/ *,short*) ; 

__attribute__((used)) static void
FUNC4(MINT *ck, DesData *deskey)
{
        MINT *a;
        MINT *z;
        short r;
        int i;
        short base = (1 << 8);
        char *k;

        z = FUNC0(0);
        a = FUNC0(0);
        FUNC1(ck, z, a);
        for (i = 0; i < ((KEYSIZE - 64) / 2) / 8; i++) {
                FUNC3(a, base, a, &r);
        }
        k = (char *)deskey;
        for (i = 0; i < 8; i++) {
                FUNC3(a, base, a, &r);
                *k++ = r;
        }
	FUNC2(z);
        FUNC2(a);
}