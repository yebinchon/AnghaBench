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
 int* a ; 
 int* c ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int*,int*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int*,size_t) ; 

int
FUNC6(void)
{
    size_t clen;

    for (clen = 0; clen < sizeof c; ++clen) {
        FUNC2(key);
        FUNC5(c, clen);
        FUNC0(a, c, clen, key);
        if (FUNC1(a, c, clen, key) != 0) {
            FUNC3("fail %u\n", (unsigned int) clen);
            return 100;
        }
        if (clen > 0) {
            c[(size_t) FUNC4() % clen] += 1 + (FUNC4() % 255);
            if (FUNC1(a, c, clen, key) == 0) {
                FUNC3("forgery %u\n", (unsigned int) clen);
                return 100;
            }
            a[FUNC4() % sizeof a] += 1 + (FUNC4() % 255);
            if (FUNC1(a, c, clen, key) == 0) {
                FUNC3("forgery %u\n", (unsigned int) clen);
                return 100;
            }
        }
    }
    return 0;
}