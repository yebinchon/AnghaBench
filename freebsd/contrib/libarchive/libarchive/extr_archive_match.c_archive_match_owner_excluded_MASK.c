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
struct archive_match {int setflag; int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FAILED ; 
 int /*<<< orphan*/  ARCHIVE_MATCH_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  EINVAL ; 
 int ID_IS_SET ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct archive_match*,struct archive_entry*) ; 

int
FUNC3(struct archive *_a,
    struct archive_entry *entry)
{
	struct archive_match *a;

	FUNC0(_a, ARCHIVE_MATCH_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_match_id_excluded_ae");

	a = (struct archive_match *)_a;
	if (entry == NULL) {
		FUNC1(&(a->archive), EINVAL, "entry is NULL");
		return (ARCHIVE_FAILED);
	}

	/* If we don't have inclusion id set at all, the entry is always
	 * not excluded. */
	if ((a->setflag & ID_IS_SET) == 0)
		return (0);
	return (FUNC2(a, entry));
}