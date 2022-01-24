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
struct src_head {int dummy; } ;
struct src_entry {struct src_entry* se_name; int /*<<< orphan*/  se_df; } ;

/* Variables and functions */
 struct src_entry* FUNC0 (struct src_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct src_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct src_entry*) ; 
 int /*<<< orphan*/  se_entry ; 

__attribute__((used)) static void
FUNC4(struct src_head *sh)
{
	struct src_entry *se;

	while ((se = FUNC0(sh)) != NULL) {
		FUNC1(sh, se_entry);
		FUNC2(se->se_df);
		FUNC3(se->se_name);
		FUNC3(se);
	}
}