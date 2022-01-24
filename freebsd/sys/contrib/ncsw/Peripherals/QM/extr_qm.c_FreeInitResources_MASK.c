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
struct TYPE_3__ {scalar_t__ h_FqidMm; scalar_t__ h_RsrvFqidMm; scalar_t__ h_Session; scalar_t__ p_PfdrBase; scalar_t__ p_FqdBase; } ;
typedef  TYPE_1__ t_Qm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(t_Qm *p_Qm)
{
    if (p_Qm->p_FqdBase)
        FUNC1(p_Qm->p_FqdBase);
    if (p_Qm->p_PfdrBase)
        FUNC1(p_Qm->p_PfdrBase);
    if (p_Qm->h_Session)
        FUNC2(p_Qm->h_Session);
    if (p_Qm->h_RsrvFqidMm)
        FUNC0(p_Qm->h_RsrvFqidMm);
    if (p_Qm->h_FqidMm)
        FUNC0(p_Qm->h_FqidMm);
}