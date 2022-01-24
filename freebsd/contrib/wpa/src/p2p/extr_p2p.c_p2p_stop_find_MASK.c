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
struct p2p_data {scalar_t__ pending_listen_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,int /*<<< orphan*/ ) ; 

void FUNC1(struct p2p_data *p2p)
{
	p2p->pending_listen_freq = 0;
	FUNC0(p2p, 0);
}