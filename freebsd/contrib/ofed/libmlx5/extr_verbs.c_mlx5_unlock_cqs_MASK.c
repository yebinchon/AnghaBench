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
struct mlx5_cq {scalar_t__ cqn; int /*<<< orphan*/  lock; } ;
struct ibv_qp {int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mlx5_cq* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ibv_qp *qp)
{
	struct mlx5_cq *send_cq = FUNC1(qp->send_cq);
	struct mlx5_cq *recv_cq = FUNC1(qp->recv_cq);

	if (send_cq && recv_cq) {
		if (send_cq == recv_cq) {
			FUNC0(&send_cq->lock);
		} else if (send_cq->cqn < recv_cq->cqn) {
			FUNC0(&recv_cq->lock);
			FUNC0(&send_cq->lock);
		} else {
			FUNC0(&send_cq->lock);
			FUNC0(&recv_cq->lock);
		}
	} else if (send_cq) {
		FUNC0(&send_cq->lock);
	} else if (recv_cq) {
		FUNC0(&recv_cq->lock);
	}
}