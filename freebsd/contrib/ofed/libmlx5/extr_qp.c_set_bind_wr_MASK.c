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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {void* qend; } ;
struct mlx5_qp {TYPE_1__ sq; } ;
struct ibv_mw_bind_info {int mw_access_flags; long length; TYPE_3__* mr; scalar_t__ addr; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  enum ibv_mw_type { ____Placeholder_ibv_mw_type } ibv_mw_type ;
struct TYPE_6__ {void* addr; int length; } ;
struct TYPE_5__ {int alloc_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int IBV_ACCESS_LOCAL_WRITE ; 
 int IBV_ACCESS_MW_BIND ; 
 int IBV_ACCESS_REMOTE_ATOMIC ; 
 int IBV_ACCESS_REMOTE_READ ; 
 int IBV_ACCESS_REMOTE_WRITE ; 
 void* FUNC0 (struct mlx5_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_qp*,int,int /*<<< orphan*/ ,struct ibv_mw_bind_info*,int /*<<< orphan*/ ,void**,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_qp*,int,int /*<<< orphan*/ ,struct ibv_mw_bind_info*,int /*<<< orphan*/ ,void**,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_qp*,int,int /*<<< orphan*/ ,struct ibv_mw_bind_info*,int /*<<< orphan*/ ,void**,int*) ; 
 TYPE_2__* FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static inline int FUNC6(struct mlx5_qp *qp, enum ibv_mw_type type,
			      int32_t rkey, struct ibv_mw_bind_info *bind_info,
			      uint32_t qpn, void **seg, int *size)
{
	void *qend = qp->sq.qend;

#ifdef MW_DEBUG
	if (bind_info->mw_access_flags &
	    ~(IBV_ACCESS_REMOTE_ATOMIC | IBV_ACCESS_REMOTE_READ |
	     IBV_ACCESS_REMOTE_WRITE))
		return EINVAL;

	if (bind_info->mr &&
	    (bind_info->mr->addr > (void *)bind_info->addr ||
	     bind_info->mr->addr + bind_info->mr->length <
	     (void *)bind_info->addr + bind_info->length ||
	     !(to_mmr(bind_info->mr)->alloc_flags &  IBV_ACCESS_MW_BIND) ||
	     (bind_info->mw_access_flags &
	      (IBV_ACCESS_REMOTE_ATOMIC | IBV_ACCESS_REMOTE_WRITE) &&
	      !(to_mmr(bind_info->mr)->alloc_flags & IBV_ACCESS_LOCAL_WRITE))))
		return EINVAL;

#endif

	/* check that len > 2GB because KLM support only 2GB */
	if (bind_info->length > 1UL << 31)
		return EOPNOTSUPP;

	FUNC1(qp, type, rkey, bind_info, qpn, seg, size);
	if (FUNC5((*seg == qend)))
		*seg = FUNC0(qp, 0);

	FUNC3(qp, type, rkey, bind_info, qpn, seg, size);
	if (!bind_info->length)
		return 0;

	if (FUNC5((seg == qend)))
		*seg = FUNC0(qp, 0);

	FUNC2(qp, type, rkey, bind_info, qpn, seg, size);
	return 0;
}