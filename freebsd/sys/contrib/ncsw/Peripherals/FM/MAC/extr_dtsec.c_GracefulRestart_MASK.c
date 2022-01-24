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
typedef  int /*<<< orphan*/  t_Error ;
struct dtsec_regs {struct dtsec_regs* p_MemMap; } ;
typedef  struct dtsec_regs t_Dtsec ;
typedef  int e_CommMode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dtsec_regs*) ; 
 int /*<<< orphan*/  E_OK ; 
 int e_COMM_MODE_RX ; 
 int e_COMM_MODE_TX ; 
 int /*<<< orphan*/  FUNC1 (struct dtsec_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct dtsec_regs*) ; 

__attribute__((used)) static t_Error FUNC3(t_Dtsec *p_Dtsec, e_CommMode mode)
{
    struct dtsec_regs *p_MemMap;

    FUNC0(p_Dtsec);
    p_MemMap = p_Dtsec->p_MemMap;
    FUNC0(p_MemMap);

    /* clear the graceful receive stop bit */
    if (mode & e_COMM_MODE_TX)
        FUNC2(p_MemMap);

    if (mode & e_COMM_MODE_RX)
        FUNC1(p_MemMap);

    return E_OK;
}