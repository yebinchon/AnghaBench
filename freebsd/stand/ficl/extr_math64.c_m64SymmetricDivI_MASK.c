#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNSQR ;
struct TYPE_4__ {int /*<<< orphan*/  quot; int /*<<< orphan*/  rem; } ;
typedef  TYPE_1__ INTQR ;
typedef  int /*<<< orphan*/  FICL_UNS ;
typedef  scalar_t__ FICL_INT ;
typedef  int /*<<< orphan*/  DPINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

INTQR FUNC5(DPINT num, FICL_INT den)
{
    INTQR qr;
    UNSQR uqr;
    int signRem = 1;
    int signQuot = 1;

    if (FUNC3(num))
    {
        num = FUNC4(num);
        signRem  = -signRem;
        signQuot = -signQuot;
    }

    if (den < 0)
    {
        den      = -den;
        signQuot = -signQuot;
    }

    uqr = FUNC0(FUNC1(num), (FICL_UNS)den);
    qr = FUNC2(uqr);
    if (signRem < 0)
        qr.rem = -qr.rem;

    if (signQuot < 0)
        qr.quot = -qr.quot;

    return qr;
}