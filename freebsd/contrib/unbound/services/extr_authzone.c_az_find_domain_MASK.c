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
struct query_info {int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
struct TYPE_2__ {struct auth_zone* key; } ;
struct auth_zone {int /*<<< orphan*/  data; int /*<<< orphan*/  name; int /*<<< orphan*/  namelabs; int /*<<< orphan*/  namelen; TYPE_1__ node; } ;
struct auth_data {int dummy; } ;
typedef  int /*<<< orphan*/  rbnode_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct auth_zone*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void
FUNC2(struct auth_zone* z, struct query_info* qinfo, int* node_exact,
	struct auth_data** node)
{
	struct auth_zone key;
	key.node.key = &key;
	key.name = qinfo->qname;
	key.namelen = qinfo->qname_len;
	key.namelabs = FUNC0(key.name);
	*node_exact = FUNC1(&z->data, &key,
		(rbnode_type**)node);
}