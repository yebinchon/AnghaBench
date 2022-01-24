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
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_2__ {int /*<<< orphan*/  const* acl_text_w; } ;
struct archive_entry {TYPE_1__ acl; int /*<<< orphan*/  archive; } ;

/* Variables and functions */
 int /*<<< orphan*/  const* FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 

const wchar_t *
FUNC3(struct archive_entry *entry, int flags)
{
	FUNC2(entry->acl.acl_text_w);
	entry->acl.acl_text_w = NULL;
	if (FUNC1(&flags) == 0)
		entry->acl.acl_text_w = FUNC0(&entry->acl,
		    NULL, flags, entry->archive);
	return (entry->acl.acl_text_w);
}