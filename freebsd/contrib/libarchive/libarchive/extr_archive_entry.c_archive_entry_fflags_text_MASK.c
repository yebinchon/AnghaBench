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
struct archive_entry {scalar_t__ ae_fflags_set; scalar_t__ ae_fflags_clear; int /*<<< orphan*/  ae_fflags_text; int /*<<< orphan*/  archive; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char* FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

const char *
FUNC5(struct archive_entry *entry)
{
	const char *f;
	char *p;

	if (FUNC3(entry->archive,
	    &entry->ae_fflags_text, &f) == 0) {
		if (f != NULL)
			return (f);
	} else if (errno == ENOMEM)
		FUNC0(1, "No memory");

	if (entry->ae_fflags_set == 0  &&  entry->ae_fflags_clear == 0)
		return (NULL);

	p = FUNC1(entry->ae_fflags_set, entry->ae_fflags_clear);
	if (p == NULL)
		return (NULL);

	FUNC2(&entry->ae_fflags_text, p);
	FUNC4(p);
	if (FUNC3(entry->archive,
	    &entry->ae_fflags_text, &f) == 0)
		return (f);
	if (errno == ENOMEM)
		FUNC0(1, "No memory");
	return (NULL);
}