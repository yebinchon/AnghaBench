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
struct archive_entry {unsigned long ae_fflags_set; unsigned long ae_fflags_clear; int /*<<< orphan*/  ae_fflags_text; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(struct archive_entry *entry,
    unsigned long set, unsigned long clear)
{
	FUNC0(&entry->ae_fflags_text);
	entry->ae_fflags_set = set;
	entry->ae_fflags_clear = clear;
}