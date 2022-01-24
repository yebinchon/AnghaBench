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
typedef  int /*<<< orphan*/  u64 ;
struct rtnl_link {int dummy; } ;
struct nl_object {int dummy; } ;
struct nl_cache {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct nl_cache*,struct nl_object*) ; 
 struct rtnl_link* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct rtnl_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtnl_link*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtnl_link*,int) ; 

__attribute__((used)) static struct rtnl_link * FUNC5(struct nl_cache *cache, int parent, u64 sci)
{
	struct rtnl_link *needle;
	void *match;

	needle = FUNC1();
	if (!needle)
		return NULL;

	FUNC4(needle, parent);
	FUNC2(needle, sci);

	match = FUNC0(cache, (struct nl_object *) needle);
	FUNC3(needle);

	return (struct rtnl_link *) match;
}