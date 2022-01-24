#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_15__ {scalar_t__ lid; } ;
typedef  TYPE_5__ ib_portid_t ;
struct TYPE_12__ {int /*<<< orphan*/  local_changes; int /*<<< orphan*/  new_cap_mask; void* lid; } ;
struct TYPE_13__ {TYPE_2__ ntc_144; } ;
struct TYPE_14__ {void* trap_num; void* prod_type_lsb; } ;
struct TYPE_11__ {TYPE_4__ generic; } ;
struct TYPE_16__ {int generic_type; TYPE_3__ data_details; void* issuer_lid; TYPE_1__ g_or_v; } ;
typedef  TYPE_6__ ib_mad_notice_attr_t ;

/* Variables and functions */
 int IB_NOTICE_TYPE_INFO ; 
 int /*<<< orphan*/  TRAP_144_MASK_OTHER_LOCAL_CHANGES ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int FUNC3 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC4(ib_mad_notice_attr_t * n, ib_portid_t * port)
{
	n->generic_type = 0x80 | IB_NOTICE_TYPE_INFO;
	n->g_or_v.generic.prod_type_lsb = FUNC0(FUNC3(port));
	n->g_or_v.generic.trap_num = FUNC0(144);
	n->issuer_lid = FUNC0((uint16_t) port->lid);
	n->data_details.ntc_144.lid = n->issuer_lid;
	n->data_details.ntc_144.new_cap_mask = FUNC1(FUNC2(port));
	n->data_details.ntc_144.local_changes =
	    TRAP_144_MASK_OTHER_LOCAL_CHANGES;
}