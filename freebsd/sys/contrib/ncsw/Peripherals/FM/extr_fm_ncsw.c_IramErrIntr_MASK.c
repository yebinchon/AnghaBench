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
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  h_App; int /*<<< orphan*/  (* f_Exception ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;struct fman_fpm_regs* p_FmFpmRegs; } ;
typedef  TYPE_1__ t_Fm ;
struct fman_fpm_regs {int dummy; } ;

/* Variables and functions */
 int FPM_RAM_IRAM_ECC ; 
 int /*<<< orphan*/  e_FM_EX_IRAM_ECC ; 
 int FUNC0 (struct fman_fpm_regs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(t_Fm *p_Fm)
{
    uint32_t    event;
    struct fman_fpm_regs *fpm_rg = p_Fm->p_FmFpmRegs;

    event = FUNC0(fpm_rg);

    if (event & FPM_RAM_IRAM_ECC)
        p_Fm->f_Exception(p_Fm->h_App, e_FM_EX_IRAM_ECC);
}