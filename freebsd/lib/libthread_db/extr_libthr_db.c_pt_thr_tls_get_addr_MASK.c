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
typedef  int /*<<< orphan*/  tls_index ;
struct TYPE_4__ {size_t th_thread; TYPE_2__* th_ta; } ;
typedef  TYPE_1__ td_thrhandle_t ;
struct TYPE_5__ {size_t thread_off_linkmap; size_t thread_off_tlsindex; size_t thread_off_tcb; size_t thread_off_dtv; int /*<<< orphan*/  ph; } ;
typedef  TYPE_2__ td_thragent_t ;
typedef  int /*<<< orphan*/  td_err_e ;
typedef  int /*<<< orphan*/  tcb_addr ;
typedef  size_t psaddr_t ;
typedef  int /*<<< orphan*/  dtv_addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TD_OK ; 
 int FUNC1 (int /*<<< orphan*/ ,size_t,...) ; 

__attribute__((used)) static td_err_e
FUNC2(const td_thrhandle_t *th, psaddr_t _linkmap, size_t offset,
    psaddr_t *address)
{
	const td_thragent_t *ta = th->th_ta;
	psaddr_t dtv_addr, obj_entry, tcb_addr;
	int tls_index, ret;

	/* linkmap is a member of Obj_Entry */
	obj_entry = _linkmap - ta->thread_off_linkmap;

	/* get tlsindex of the object file */
	ret = FUNC1(ta->ph,
		obj_entry + ta->thread_off_tlsindex,
		&tls_index, sizeof(tls_index));
	if (ret != 0)
		return (FUNC0(ret));

	/* get thread tcb */
	ret = FUNC1(ta->ph, th->th_thread + ta->thread_off_tcb,
		&tcb_addr, sizeof(tcb_addr));
	if (ret != 0)
		return (FUNC0(ret));

	/* get dtv array address */
	ret = FUNC1(ta->ph, tcb_addr + ta->thread_off_dtv,
		&dtv_addr, sizeof(dtv_addr));
	if (ret != 0)
		return (FUNC0(ret));
	/* now get the object's tls block base address */
	ret = FUNC1(ta->ph, dtv_addr + sizeof(void *) * (tls_index+1),
	    address, sizeof(*address));
	if (ret != 0)
		return (FUNC0(ret));

	*address += offset;
	return (TD_OK);
}