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
struct archive_entry {int dummy; } ;
struct archive {TYPE_1__* vtable; } ;
struct TYPE_2__ {int (* archive_read_next_header2 ) (struct archive*,struct archive_entry*) ;} ;

/* Variables and functions */
 int FUNC0 (struct archive*,struct archive_entry*) ; 

int
FUNC1(struct archive *a, struct archive_entry *entry)
{
	return ((a->vtable->archive_read_next_header2)(a, entry));
}