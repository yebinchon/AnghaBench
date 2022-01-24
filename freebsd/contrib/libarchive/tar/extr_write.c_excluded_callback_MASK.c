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
struct bsdtar {int flags; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int OPTFLAG_INTERACTIVE ; 
 int OPTFLAG_NO_SUBDIRS ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct archive *a, void *_data, struct archive_entry *entry)
{
	struct bsdtar *bsdtar = (struct bsdtar *)_data;

	if (bsdtar->flags & OPTFLAG_NO_SUBDIRS)
		return;
	if (!FUNC1(a))
		return;
	if ((bsdtar->flags & OPTFLAG_INTERACTIVE) &&
	    !FUNC3("add '%s'", FUNC0(entry)))
		return;
	FUNC2(a);
}