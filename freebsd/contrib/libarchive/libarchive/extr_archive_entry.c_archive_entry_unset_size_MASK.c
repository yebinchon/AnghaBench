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
struct archive_entry {int /*<<< orphan*/  ae_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_SET_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,int /*<<< orphan*/ ) ; 

void
FUNC1(struct archive_entry *entry)
{
	FUNC0(entry, 0);
	entry->ae_set &= ~AE_SET_SIZE;
}