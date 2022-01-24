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
struct TYPE_3__ {int /*<<< orphan*/  p_LowQmPortal; } ;
typedef  TYPE_1__ t_QmPortal ;
struct qm_mr_entry {int dummy; } ;
struct qm_dqrr_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct qm_dqrr_entry* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qm_mr_entry* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(t_QmPortal *p_QmPortal)
{
    struct qm_dqrr_entry    *p_Dq;
    struct qm_mr_entry      *p_Msg;
    int                     idle = 0;

    FUNC8(p_QmPortal->p_LowQmPortal, 0);
    FUNC9(p_QmPortal->p_LowQmPortal, 0);
drain_loop:
    FUNC2(p_QmPortal->p_LowQmPortal);
    FUNC3(p_QmPortal->p_LowQmPortal);
    FUNC5(p_QmPortal->p_LowQmPortal);
    p_Dq = FUNC6(p_QmPortal->p_LowQmPortal);
    p_Msg = FUNC10(p_QmPortal->p_LowQmPortal);
    if (p_Dq) {
        FUNC7(p_QmPortal->p_LowQmPortal);
        FUNC1(p_QmPortal->p_LowQmPortal, 1);
    }
    if (p_Msg) {
    FUNC11(p_QmPortal->p_LowQmPortal);
        FUNC4(p_QmPortal->p_LowQmPortal, 1);
    }
    if (!p_Dq && !p_Msg) {
    if (++idle < 5) {
    FUNC0(1000);
    goto drain_loop;
    }
    } else {
    idle = 0;
    goto drain_loop;
    }
}