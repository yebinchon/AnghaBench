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
struct tag {int dummy; } ;
struct roff_meta {int /*<<< orphan*/  os; int /*<<< orphan*/  date; } ;
struct html {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TAG_TABLE ; 
 int /*<<< orphan*/  TAG_TD ; 
 int /*<<< orphan*/  TAG_TR ; 
 struct tag* FUNC0 (struct html*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct html*,struct tag*) ; 
 int /*<<< orphan*/  FUNC2 (struct html*,struct tag*) ; 
 int /*<<< orphan*/  FUNC3 (struct html*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(const struct roff_meta *meta, struct html *h)
{
	struct tag	*t, *tt;

	t = FUNC0(h, TAG_TABLE, "c", "foot");
	tt = FUNC0(h, TAG_TR, "");

	FUNC0(h, TAG_TD, "c", "foot-date");
	FUNC3(h, meta->date);
	FUNC1(h, tt);

	FUNC0(h, TAG_TD, "c", "foot-os");
	FUNC3(h, meta->os);
	FUNC2(h, t);
}