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
struct p2p_channels {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct p2p_channels*,struct p2p_channels const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_channels*,struct p2p_channels const*) ; 

void FUNC2(const struct p2p_channels *a,
			const struct p2p_channels *b,
			struct p2p_channels *res)
{
	FUNC0(res, a, sizeof(*res));
	FUNC1(res, b);
}