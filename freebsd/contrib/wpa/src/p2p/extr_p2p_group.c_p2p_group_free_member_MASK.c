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
struct p2p_group_member {int /*<<< orphan*/  client_info; int /*<<< orphan*/  p2p_ie; int /*<<< orphan*/  wfd_ie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct p2p_group_member*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct p2p_group_member *m)
{
	FUNC1(m->wfd_ie);
	FUNC1(m->p2p_ie);
	FUNC1(m->client_info);
	FUNC0(m);
}