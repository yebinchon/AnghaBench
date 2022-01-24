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
struct TYPE_3__ {scalar_t__ h_BpidMm; scalar_t__ h_Session; scalar_t__ p_FbprBase; } ;
typedef  TYPE_1__ t_Bm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(t_Bm *p_Bm)
{
    if (p_Bm->p_FbprBase)
        FUNC1(p_Bm->p_FbprBase);
    if (p_Bm->h_Session)
        FUNC2(p_Bm->h_Session);
    if (p_Bm->h_BpidMm)
        FUNC0(p_Bm->h_BpidMm);
}