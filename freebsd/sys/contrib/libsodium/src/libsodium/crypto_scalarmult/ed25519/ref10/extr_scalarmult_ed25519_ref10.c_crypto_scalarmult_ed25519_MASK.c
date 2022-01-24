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
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 scalar_t__ FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char const*) ; 
 scalar_t__ FUNC3 (unsigned char const*) ; 
 scalar_t__ FUNC4 (unsigned char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (unsigned char const*,int) ; 

int
FUNC9(unsigned char *q, const unsigned char *n,
                          const unsigned char *p)
{
    unsigned char *t = q;
    ge25519_p3     Q;
    ge25519_p3     P;
    unsigned int   i;

    if (FUNC4(p) == 0 || FUNC3(p) != 0 ||
        FUNC2(&P, p) != 0 || FUNC5(&P) == 0) {
        return -1;
    }
    for (i = 0; i < 32; ++i) {
        t[i] = n[i];
    }
    FUNC0(t);
    FUNC7(&Q, t, &P);
    FUNC6(q, &Q);
    if (FUNC1(q) != 0 || FUNC8(n, 32)) {
        return -1;
    }
    return 0;
}