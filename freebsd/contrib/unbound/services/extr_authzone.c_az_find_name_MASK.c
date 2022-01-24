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
struct TYPE_2__ {struct auth_zone* key; } ;
struct auth_zone {size_t namelen; int /*<<< orphan*/  data; int /*<<< orphan*/  namelabs; int /*<<< orphan*/ * name; TYPE_1__ node; } ;
struct auth_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct auth_zone*) ; 

__attribute__((used)) static struct auth_data*
FUNC2(struct auth_zone* z, uint8_t* nm, size_t nmlen)
{
	struct auth_zone key;
	key.node.key = &key;
	key.name = nm;
	key.namelen = nmlen;
	key.namelabs = FUNC0(nm);
	return (struct auth_data*)FUNC1(&z->data, &key);
}