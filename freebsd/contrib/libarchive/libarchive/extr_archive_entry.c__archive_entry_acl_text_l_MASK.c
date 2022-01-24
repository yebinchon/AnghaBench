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
struct archive_string_conv {int dummy; } ;
struct TYPE_2__ {char* acl_text; } ;
struct archive_entry {TYPE_1__ acl; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int,struct archive_string_conv*) ; 
 scalar_t__ FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3(struct archive_entry *entry, int flags,
    const char **acl_text, size_t *len, struct archive_string_conv *sc)
{
	FUNC2(entry->acl.acl_text);
	entry->acl.acl_text = NULL;

	if (FUNC1(&flags) == 0)
		entry->acl.acl_text = FUNC0(&entry->acl,
		    (ssize_t *)len, flags, sc);

	*acl_text = entry->acl.acl_text;

	return (0);
}