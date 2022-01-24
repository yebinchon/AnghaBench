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
struct sigev_node {int /*<<< orphan*/  (* sn_dispatch ) (struct sigev_node*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sigev_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct sigev_node*) ; 
 int /*<<< orphan*/  worker_cleanup ; 

__attribute__((used)) static void *
FUNC3(void *arg)
{
	struct sigev_node *sn = arg;

	FUNC1(worker_cleanup, sn);
	sn->sn_dispatch(sn);
	FUNC0(1);

	return (0);
}