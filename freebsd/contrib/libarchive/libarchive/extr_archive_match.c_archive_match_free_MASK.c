#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct archive_match* ids; } ;
struct TYPE_3__ {struct archive_match* ids; } ;
struct archive_match {int /*<<< orphan*/  inclusion_gnames; int /*<<< orphan*/  inclusion_unames; TYPE_2__ inclusion_gids; TYPE_1__ inclusion_uids; int /*<<< orphan*/  exclusion_entry_list; int /*<<< orphan*/  exclusions; int /*<<< orphan*/  inclusions; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_MATCH_MAGIC ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_STATE_ANY ; 
 int ARCHIVE_STATE_FATAL ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_match*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct archive *_a)
{
	struct archive_match *a;

	if (_a == NULL)
		return (ARCHIVE_OK);
	FUNC0(_a, ARCHIVE_MATCH_MAGIC,
	    ARCHIVE_STATE_ANY | ARCHIVE_STATE_FATAL, "archive_match_free");
	a = (struct archive_match *)_a;
	FUNC3(&(a->inclusions));
	FUNC3(&(a->exclusions));
	FUNC1(&(a->exclusion_entry_list));
	FUNC2(a->inclusion_uids.ids);
	FUNC2(a->inclusion_gids.ids);
	FUNC3(&(a->inclusion_unames));
	FUNC3(&(a->inclusion_gnames));
	FUNC2(a);
	return (ARCHIVE_OK);
}