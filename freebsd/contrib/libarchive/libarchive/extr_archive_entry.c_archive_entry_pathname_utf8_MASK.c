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
struct archive_entry {int /*<<< orphan*/  ae_pathname; int /*<<< orphan*/  archive; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ errno ; 

const char *
FUNC2(struct archive_entry *entry)
{
	const char *p;
	if (FUNC1(
	    entry->archive, &entry->ae_pathname, &p) == 0)
		return (p);
	if (errno == ENOMEM)
		FUNC0(1, "No memory");
	return (NULL);
}