#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct mlx5_rwqe_sig {int /*<<< orphan*/  signature; } ;
typedef  struct mlx5_rwqe_sig uint32_t ;
typedef  struct mlx5_rwqe_sig uint16_t ;
struct mlx5_qp {TYPE_1__* ibv_qp; } ;
struct TYPE_2__ {struct mlx5_rwqe_sig qp_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_rwqe_sig*,int) ; 

__attribute__((used)) static void FUNC1(struct mlx5_qp *qp, struct mlx5_rwqe_sig *sig,
			int size, uint16_t idx)
{
	uint8_t  sign;
	uint32_t qpn = qp->ibv_qp->qp_num;

	sign = FUNC0(sig, size);
	sign ^= FUNC0(&qpn, 4);
	sign ^= FUNC0(&idx, 2);
	sig->signature = sign;
}