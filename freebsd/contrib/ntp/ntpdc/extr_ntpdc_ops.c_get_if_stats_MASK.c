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
struct parse {int dummy; } ;
struct info_if_stats {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  REQ_IF_STATS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t*,size_t*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct info_if_stats*,size_t,size_t,int) ; 
 int /*<<< orphan*/  impl_ver ; 

__attribute__((used)) static void
FUNC2(
	struct parse *pcmd,
	FILE *fp
	)
{
	struct info_if_stats *ifs;
	size_t items;
	size_t itemsize;
	int res;

	res = FUNC0(impl_ver, REQ_IF_STATS, 1, 0, 0, (char *)NULL, &items,
		      &itemsize, (void *)&ifs, 0, 
		      sizeof(struct info_if_stats));
	FUNC1(fp, ifs, items, itemsize, res);
}