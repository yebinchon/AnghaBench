#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  xy2d; int /*<<< orphan*/  yplusx; int /*<<< orphan*/  yminusx; } ;
typedef  TYPE_1__ const ge25519_precomp ;

/* Variables and functions */
 unsigned char const FUNC0 (unsigned char const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,TYPE_1__ const*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 unsigned char FUNC5 (char const) ; 

__attribute__((used)) static void
FUNC6(ge25519_precomp *t, const ge25519_precomp precomp[8], const signed char b)
{
    ge25519_precomp     minust;
    const unsigned char bnegative = FUNC5(b);
    const unsigned char babs      = b - (((-bnegative) & b) * ((signed char) 1 << 1));

    FUNC4(t);
    FUNC3(t, &precomp[0], FUNC0(babs, 1));
    FUNC3(t, &precomp[1], FUNC0(babs, 2));
    FUNC3(t, &precomp[2], FUNC0(babs, 3));
    FUNC3(t, &precomp[3], FUNC0(babs, 4));
    FUNC3(t, &precomp[4], FUNC0(babs, 5));
    FUNC3(t, &precomp[5], FUNC0(babs, 6));
    FUNC3(t, &precomp[6], FUNC0(babs, 7));
    FUNC3(t, &precomp[7], FUNC0(babs, 8));
    FUNC1(minust.yplusx, t->yminusx);
    FUNC1(minust.yminusx, t->yplusx);
    FUNC2(minust.xy2d, t->xy2d);
    FUNC3(t, &minust, bnegative);
}