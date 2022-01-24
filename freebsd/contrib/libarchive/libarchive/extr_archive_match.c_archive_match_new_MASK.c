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
struct archive {int /*<<< orphan*/  state; int /*<<< orphan*/  magic; } ;
struct archive_match {int recursive_include; struct archive archive; int /*<<< orphan*/  now; int /*<<< orphan*/  inclusion_gnames; int /*<<< orphan*/  inclusion_unames; int /*<<< orphan*/  exclusion_entry_list; int /*<<< orphan*/  exclusion_tree; int /*<<< orphan*/  exclusions; int /*<<< orphan*/  inclusions; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_MATCH_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rb_ops_mbs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct archive *
FUNC5(void)
{
	struct archive_match *a;

	a = (struct archive_match *)FUNC1(1, sizeof(*a));
	if (a == NULL)
		return (NULL);
	a->archive.magic = ARCHIVE_MATCH_MAGIC;
	a->archive.state = ARCHIVE_STATE_NEW;
	a->recursive_include = 1;
	FUNC3(&(a->inclusions));
	FUNC3(&(a->exclusions));
	FUNC0(&(a->exclusion_tree), &rb_ops_mbs);
	FUNC2(&(a->exclusion_entry_list));
	FUNC3(&(a->inclusion_unames));
	FUNC3(&(a->inclusion_gnames));
	FUNC4(&a->now);
	return (&(a->archive));
}