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
struct archive_entry {int /*<<< orphan*/  ae_sourcepath; int /*<<< orphan*/  archive; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 

const wchar_t *
FUNC1(struct archive_entry *entry)
{
	const wchar_t *p;
	if (FUNC0(
	    entry->archive, &entry->ae_sourcepath, &p) == 0)
		return (p);
	return (NULL);
}