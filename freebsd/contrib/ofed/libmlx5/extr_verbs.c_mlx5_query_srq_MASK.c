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
struct ibv_srq_attr {int dummy; } ;
struct ibv_srq {int dummy; } ;
struct ibv_query_srq {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ibv_srq*,struct ibv_srq_attr*,struct ibv_query_srq*,int) ; 

int FUNC1(struct ibv_srq *srq,
		    struct ibv_srq_attr *attr)
{
	struct ibv_query_srq cmd;

	return FUNC0(srq, attr, &cmd, sizeof cmd);
}