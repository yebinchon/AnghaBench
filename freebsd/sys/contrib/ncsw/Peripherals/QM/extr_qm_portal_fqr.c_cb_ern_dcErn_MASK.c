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
typedef  struct qman_fq const* t_Handle ;
typedef  struct qman_fq const qman_fq ;
typedef  struct qman_fq qm_mr_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qman_fq const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2(t_Handle                   h_App,
                         t_Handle                   h_QmPortal,
                         struct qman_fq             *p_Fq,
                         const struct qm_mr_entry   *p_Msg)
{
    static int cnt = 0;
    FUNC0(p_Fq);
    FUNC0(p_Msg);
    FUNC0(h_App);
    FUNC0(h_QmPortal);

    FUNC1("cb_ern_dcErn_fqs() unimplemented %d\n", ++cnt);
}