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
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 scalar_t__ FUNC3 (unsigned char const*,int) ; 

int
FUNC4(unsigned char *q,
                               const unsigned char *n)
{
    unsigned char *t = q;
    ge25519_p3     Q;
    unsigned int   i;

    for (i = 0; i < 32; ++i) {
        t[i] = n[i];
    }
    FUNC0(t);
    FUNC2(&Q, t);
    FUNC1(q, &Q);
    if (FUNC3(n, 32) != 0) {
        return -1;
    }
    return 0;
}