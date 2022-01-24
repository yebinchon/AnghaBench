#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  mesh; int /*<<< orphan*/  cfg; } ;
struct worker {TYPE_2__* back; TYPE_1__ env; int /*<<< orphan*/  stats; } ;
struct TYPE_4__ {scalar_t__ num_tcp_outgoing; scalar_t__ unwanted_replies; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(struct worker* worker)
{
	FUNC1(&worker->stats, worker->env.cfg);
	FUNC0(worker->env.mesh);
	worker->back->unwanted_replies = 0;
	worker->back->num_tcp_outgoing = 0;
}