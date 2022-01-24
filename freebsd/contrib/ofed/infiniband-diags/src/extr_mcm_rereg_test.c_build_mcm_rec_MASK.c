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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  ibmad_gid_t ;

/* Variables and functions */
 int IB_MCR_COMPMASK_JOIN_STATE ; 
 int IB_MCR_COMPMASK_MGID ; 
 int IB_MCR_COMPMASK_PORT_GID ; 
 int /*<<< orphan*/  IB_SA_DATA_SIZE ; 
 int /*<<< orphan*/  IB_SA_MCM_JOIN_STATE_F ; 
 int /*<<< orphan*/  IB_SA_MCM_MGID_F ; 
 int /*<<< orphan*/  IB_SA_MCM_PORTGID_F ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint64_t FUNC3(uint8_t * data, ibmad_gid_t mgid, ibmad_gid_t port_gid)
{
	FUNC2(data, 0, IB_SA_DATA_SIZE);
	FUNC0(data, 0, IB_SA_MCM_MGID_F, mgid);
	FUNC0(data, 0, IB_SA_MCM_PORTGID_F, port_gid);
	FUNC1(data, 0, IB_SA_MCM_JOIN_STATE_F, 1);

	return IB_MCR_COMPMASK_MGID | IB_MCR_COMPMASK_PORT_GID |
	    IB_MCR_COMPMASK_JOIN_STATE;
}