#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {size_t commandSequence; } ;
typedef  TYPE_1__ t_HcFrame ;
typedef  scalar_t__ t_Handle ;
struct TYPE_5__ {int /*<<< orphan*/  h_FmPcd; scalar_t__* enqueued; } ;
typedef  TYPE_2__ t_FmHc ;
typedef  int /*<<< orphan*/  t_DpaaFD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_INVALID_FRAME ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MINOR ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRACE ; 

void FUNC8(t_Handle h_FmHc, t_DpaaFD *p_Fd)
{
    t_FmHc      *p_FmHc = (t_FmHc*)h_FmHc;
    t_HcFrame   *p_HcFrame;
    uint32_t    intFlags;

    FUNC0(p_FmHc);

    intFlags = FUNC4(p_FmHc->h_FmPcd);
    p_HcFrame  = (t_HcFrame *)FUNC6(FUNC2(p_Fd), FUNC3(p_Fd));

    FUNC1(TRACE, ("Hc Conf, SeqNum %d, FD@0x%x, fd offset 0x%x",
                p_HcFrame->commandSequence, FUNC2(p_Fd), FUNC3(p_Fd)));

    if (!(p_FmHc->enqueued[p_HcFrame->commandSequence]))
        FUNC7(MINOR, E_INVALID_FRAME, ("Not an Host-Command frame received!"));
    else
        p_FmHc->enqueued[p_HcFrame->commandSequence] = FALSE;
    FUNC5(p_FmHc->h_FmPcd, intFlags);
}