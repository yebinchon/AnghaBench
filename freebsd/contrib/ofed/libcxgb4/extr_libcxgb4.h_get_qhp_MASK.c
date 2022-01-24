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
typedef  size_t u32 ;
struct c4iw_qp {int dummy; } ;
struct c4iw_dev {struct c4iw_qp** qpid2ptr; } ;

/* Variables and functions */

__attribute__((used)) static inline struct c4iw_qp *FUNC0(struct c4iw_dev *rhp, u32 qid)
{
	return rhp->qpid2ptr[qid];
}