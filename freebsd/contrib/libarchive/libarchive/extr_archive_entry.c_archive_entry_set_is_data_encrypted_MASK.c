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
struct archive_entry {int /*<<< orphan*/  encryption; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_ENCRYPTION_DATA ; 

void
FUNC0(struct archive_entry *entry, char is_encrypted)
{
	if (is_encrypted) {
		entry->encryption |= AE_ENCRYPTION_DATA;
	} else {
		entry->encryption &= ~AE_ENCRYPTION_DATA;
	}
}