#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ns_sect ;
struct TYPE_6__ {int type; int rr_class; int rdlength; int /*<<< orphan*/ * rdata; scalar_t__ ttl; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ ns_rr ;
struct TYPE_7__ {int _sect; int _rrnum; int* _counts; int _msg_ptr; int _eom; int /*<<< orphan*/  _msg; } ;
typedef  TYPE_2__ ns_msg ;

/* Variables and functions */
 int /*<<< orphan*/  EMSGSIZE ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int NS_INT16SZ ; 
 int NS_INT32SZ ; 
 int /*<<< orphan*/  NS_MAXDNAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ns_s_max ; 
 int ns_s_qd ; 
 int FUNC4 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

int
FUNC6(ns_msg *handle, ns_sect section, int rrnum, ns_rr *rr) {
	int b;
	int tmp;

	/* Make section right. */
	tmp = section;
	if (tmp < 0 || section >= ns_s_max)
		FUNC2(ENODEV);
	if (section != handle->_sect)
		FUNC5(handle, section);

	/* Make rrnum right. */
	if (rrnum == -1)
		rrnum = handle->_rrnum;
	if (rrnum < 0 || rrnum >= handle->_counts[(int)section])
		FUNC2(ENODEV);
	if (rrnum < handle->_rrnum)
		FUNC5(handle, section);
	if (rrnum > handle->_rrnum) {
		b = FUNC4(handle->_msg_ptr, handle->_eom, section,
			      rrnum - handle->_rrnum);

		if (b < 0)
			return (-1);
		handle->_msg_ptr += b;
		handle->_rrnum = rrnum;
	}

	/* Do the parse. */
	b = FUNC3(handle->_msg, handle->_eom,
		      handle->_msg_ptr, rr->name, NS_MAXDNAME);
	if (b < 0)
		return (-1);
	handle->_msg_ptr += b;
	if (handle->_msg_ptr + NS_INT16SZ + NS_INT16SZ > handle->_eom)
		FUNC2(EMSGSIZE);
	FUNC0(rr->type, handle->_msg_ptr);
	FUNC0(rr->rr_class, handle->_msg_ptr);
	if (section == ns_s_qd) {
		rr->ttl = 0;
		rr->rdlength = 0;
		rr->rdata = NULL;
	} else {
		if (handle->_msg_ptr + NS_INT32SZ + NS_INT16SZ > handle->_eom)
			FUNC2(EMSGSIZE);
		FUNC1(rr->ttl, handle->_msg_ptr);
		FUNC0(rr->rdlength, handle->_msg_ptr);
		if (handle->_msg_ptr + rr->rdlength > handle->_eom)
			FUNC2(EMSGSIZE);
		rr->rdata = &handle->_msg_ptr;
		handle->_msg_ptr += rr->rdlength;
	}
	if (++handle->_rrnum > handle->_counts[(int)section])
		FUNC5(handle, (ns_sect)((int)section + 1));

	/* All done. */
	return (0);
}