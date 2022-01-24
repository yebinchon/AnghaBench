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
struct TYPE_2__ {unsigned long long* qend; } ;
struct mlx5_qp {unsigned long long* sq_start; TYPE_1__ sq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(unsigned long long *dst, unsigned long long *src,
			 unsigned bytecnt, struct mlx5_qp *qp)
{
	while (bytecnt > 0) {
		*dst++ = *src++;
		*dst++ = *src++;
		*dst++ = *src++;
		*dst++ = *src++;
		*dst++ = *src++;
		*dst++ = *src++;
		*dst++ = *src++;
		*dst++ = *src++;
		bytecnt -= 8 * sizeof(unsigned long long);
		if (FUNC0(src == qp->sq.qend))
			src = qp->sq_start;
	}
}