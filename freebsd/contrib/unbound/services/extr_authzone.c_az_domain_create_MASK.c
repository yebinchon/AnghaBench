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
struct auth_zone {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {struct auth_data* key; } ;
struct auth_data {size_t namelen; struct auth_data* name; TYPE_1__ node; int /*<<< orphan*/  namelabs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_data*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 struct auth_data* FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct auth_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static struct auth_data*
FUNC7(struct auth_zone* z, uint8_t* nm, size_t nmlen)
{
	struct auth_data* n = (struct auth_data*)FUNC3(sizeof(*n));
	if(!n) return NULL;
	FUNC5(n, 0, sizeof(*n));
	n->node.key = n;
	n->name = FUNC4(nm, nmlen);
	if(!n->name) {
		FUNC1(n);
		return NULL;
	}
	n->namelen = nmlen;
	n->namelabs = FUNC0(nm);
	if(!FUNC6(&z->data, &n->node)) {
		FUNC2("duplicate auth domain name");
		FUNC1(n->name);
		FUNC1(n);
		return NULL;
	}
	return n;
}