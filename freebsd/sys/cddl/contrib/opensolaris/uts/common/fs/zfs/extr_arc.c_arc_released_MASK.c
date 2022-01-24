#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  b_evict_lock; TYPE_2__* b_hdr; int /*<<< orphan*/ * b_data; } ;
typedef  TYPE_3__ arc_buf_t ;
struct TYPE_5__ {scalar_t__ b_state; } ;
struct TYPE_6__ {TYPE_1__ b_l1hdr; } ;

/* Variables and functions */
 scalar_t__ arc_anon ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(arc_buf_t *buf)
{
	int released;

	FUNC0(&buf->b_evict_lock);
	released = (buf->b_data != NULL &&
	    buf->b_hdr->b_l1hdr.b_state == arc_anon);
	FUNC1(&buf->b_evict_lock);
	return (released);
}