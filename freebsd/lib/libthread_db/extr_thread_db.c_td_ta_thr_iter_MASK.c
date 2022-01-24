#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* ta_ops; } ;
typedef  TYPE_2__ td_thragent_t ;
typedef  int /*<<< orphan*/  td_thr_state_e ;
typedef  int /*<<< orphan*/  td_thr_iter_f ;
typedef  int /*<<< orphan*/  td_err_e ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* to_ta_thr_iter ) (TYPE_2__ const*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,unsigned int) ; 

td_err_e
FUNC1(const td_thragent_t *ta, td_thr_iter_f *callback,
    void *cbdata_p, td_thr_state_e state, int ti_pri, sigset_t *ti_sigmask_p,
    unsigned int ti_user_flags)
{
	return (ta->ta_ops->to_ta_thr_iter(ta, callback, cbdata_p, state,
		    ti_pri, ti_sigmask_p, ti_user_flags));
}