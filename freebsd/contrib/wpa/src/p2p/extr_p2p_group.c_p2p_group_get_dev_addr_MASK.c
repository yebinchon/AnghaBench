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
typedef  int /*<<< orphan*/  u8 ;
struct p2p_group_member {int /*<<< orphan*/  const* dev_addr; } ;
struct p2p_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 struct p2p_group_member* FUNC1 (struct p2p_group*,int /*<<< orphan*/  const*) ; 

const u8 * FUNC2(struct p2p_group *group, const u8 *addr)
{
	struct p2p_group_member *m;

	if (group == NULL)
		return NULL;
	m = FUNC1(group, addr);
	if (m && !FUNC0(m->dev_addr))
		return m->dev_addr;
	return NULL;
}