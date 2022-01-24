#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mlx4_wqe_datagram_seg {int /*<<< orphan*/  mac; int /*<<< orphan*/  vlan; void* qkey; void* dqpn; int /*<<< orphan*/  av; } ;
struct mlx4_av {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ah; int /*<<< orphan*/  remote_qkey; int /*<<< orphan*/  remote_qpn; } ;
struct TYPE_5__ {TYPE_1__ ud; } ;
struct ibv_send_wr {TYPE_2__ wr; } ;
struct TYPE_6__ {int /*<<< orphan*/ * mac; int /*<<< orphan*/  vlan; int /*<<< orphan*/  av; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mlx4_wqe_datagram_seg *dseg,
			     struct ibv_send_wr *wr)
{
	FUNC2(dseg->av, &FUNC3(wr->wr.ud.ah)->av, sizeof (struct mlx4_av));
	dseg->dqpn = FUNC1(wr->wr.ud.remote_qpn);
	dseg->qkey = FUNC1(wr->wr.ud.remote_qkey);
	dseg->vlan = FUNC0(FUNC3(wr->wr.ud.ah)->vlan);
	FUNC2(dseg->mac, FUNC3(wr->wr.ud.ah)->mac, 6);
}