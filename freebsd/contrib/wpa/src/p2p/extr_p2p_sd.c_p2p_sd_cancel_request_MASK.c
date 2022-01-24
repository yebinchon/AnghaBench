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
struct p2p_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (struct p2p_data*,void*) ; 

int FUNC3(struct p2p_data *p2p, void *req)
{
	if (FUNC2(p2p, req)) {
		FUNC0(p2p, "Cancel pending SD query %p", req);
		FUNC1(req);
		return 0;
	}
	return -1;
}