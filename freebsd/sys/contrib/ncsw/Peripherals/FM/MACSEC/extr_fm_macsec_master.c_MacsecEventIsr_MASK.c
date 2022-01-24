#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_7__ {TYPE_1__* intrMng; TYPE_2__* p_FmMacsecRegs; } ;
typedef  TYPE_3__ t_FmMacsec ;
struct TYPE_6__ {int /*<<< orphan*/  evr; int /*<<< orphan*/  ever; } ;
struct TYPE_5__ {int /*<<< orphan*/  h_SrcHandle; int /*<<< orphan*/  (* f_Isr ) (int /*<<< orphan*/ ,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ NUM_OF_TX_SC ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  e_FM_INTR_TYPE_NORMAL ; 
 int /*<<< orphan*/  e_FM_MACSEC_MOD_SC_TX ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(t_Handle h_FmMacsec)
{
    t_FmMacsec  *p_FmMacsec = (t_FmMacsec*)h_FmMacsec;
    uint32_t    events,event,i;

    FUNC3(p_FmMacsec, E_INVALID_HANDLE);

    events = FUNC2(p_FmMacsec->p_FmMacsecRegs->evr);
    events |= FUNC2(p_FmMacsec->p_FmMacsecRegs->ever);
    FUNC4(p_FmMacsec->p_FmMacsecRegs->evr,events);

    for (i=0; i<NUM_OF_TX_SC; i++)
        if (events & FUNC0(i))
        {
            FUNC1(e_FM_MACSEC_MOD_SC_TX, i, e_FM_INTR_TYPE_NORMAL, event);
            p_FmMacsec->intrMng[event].f_Isr(p_FmMacsec->intrMng[event].h_SrcHandle, i);
        }
}