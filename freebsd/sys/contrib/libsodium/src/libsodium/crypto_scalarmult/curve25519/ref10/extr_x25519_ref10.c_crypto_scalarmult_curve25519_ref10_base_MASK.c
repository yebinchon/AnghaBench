#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; } ;
typedef  TYPE_1__ ge25519_p3 ;
typedef  int /*<<< orphan*/  fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned char*) ; 

__attribute__((used)) static int
FUNC3(unsigned char *q,
                                        const unsigned char *n)
{
    unsigned char *t = q;
    ge25519_p3     A;
    fe25519        pk;
    unsigned int   i;

    for (i = 0; i < 32; i++) {
        t[i] = n[i];
    }
    t[0] &= 248;
    t[31] &= 127;
    t[31] |= 64;
    FUNC2(&A, t);
    FUNC0(pk, A.Y, A.Z);
    FUNC1(q, pk);

    return 0;
}