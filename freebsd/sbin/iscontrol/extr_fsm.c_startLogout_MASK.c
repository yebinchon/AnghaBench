#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trans_t ;
struct TYPE_6__ {int /*<<< orphan*/  bhs; } ;
struct TYPE_7__ {TYPE_1__ ipdu; } ;
typedef  TYPE_2__ pdu_t ;
struct TYPE_8__ {int cmd; int reason; int /*<<< orphan*/  CID; } ;
typedef  TYPE_3__ logout_req_t ;
typedef  int /*<<< orphan*/  isess_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ISCSI_LOGOUT_CMD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  handleLogoutResp ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static trans_t
FUNC4(isess_t *sess)
{
     pdu_t	spp;
     logout_req_t *p = (logout_req_t *)&spp.ipdu.bhs;

     FUNC1(&spp, sizeof(pdu_t));
     p->cmd = ISCSI_LOGOUT_CMD| 0x40;
     p->reason = FUNC0(7) | 0;
     p->CID = FUNC2(1);

     return FUNC3(sess, &spp, handleLogoutResp);
}