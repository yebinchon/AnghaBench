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
typedef  int /*<<< orphan*/  wchar_t ;
struct archive_entry {int /*<<< orphan*/  ae_set; int /*<<< orphan*/  ae_hardlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_SET_HARDLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

void
FUNC1(struct archive_entry *entry, const wchar_t *target)
{
	FUNC0(&entry->ae_hardlink, target);
	if (target != NULL)
		entry->ae_set |= AE_SET_HARDLINK;
	else
		entry->ae_set &= ~AE_SET_HARDLINK;
}