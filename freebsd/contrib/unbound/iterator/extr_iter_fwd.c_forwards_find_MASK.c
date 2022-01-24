#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct iter_forwards {int /*<<< orphan*/  tree; } ;
struct TYPE_2__ {struct iter_forward_zone* key; } ;
struct iter_forward_zone {struct delegpt* dp; int /*<<< orphan*/  namelen; int /*<<< orphan*/  namelabs; int /*<<< orphan*/ * name; int /*<<< orphan*/  dclass; TYPE_1__ node; } ;
struct delegpt {int dummy; } ;
typedef  int /*<<< orphan*/  rbnode_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,struct iter_forward_zone*) ; 

struct delegpt* 
FUNC2(struct iter_forwards* fwd, uint8_t* qname, uint16_t qclass)
{
	rbnode_type* res = NULL;
	struct iter_forward_zone key;
	key.node.key = &key;
	key.dclass = qclass;
	key.name = qname;
	key.namelabs = FUNC0(qname, &key.namelen);
	res = FUNC1(fwd->tree, &key);
	if(res) return ((struct iter_forward_zone*)res)->dp;
	return NULL;
}