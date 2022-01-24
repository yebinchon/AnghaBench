#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ bufs_used; scalar_t__ bufs_allocated; } ;
typedef  TYPE_1__ lzma_outq ;

/* Variables and functions */

__attribute__((used)) static inline bool
FUNC0(const lzma_outq *outq)
{
	return outq->bufs_used < outq->bufs_allocated;
}