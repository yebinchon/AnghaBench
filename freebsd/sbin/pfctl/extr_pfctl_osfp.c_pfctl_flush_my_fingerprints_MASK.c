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
struct name_list {int dummy; } ;
struct name_entry {struct name_list nm_sublist; } ;

/* Variables and functions */
 struct name_entry* FUNC0 (struct name_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct name_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ class_count ; 
 scalar_t__ fingerprint_count ; 
 int /*<<< orphan*/  FUNC2 (struct name_entry*) ; 
 int /*<<< orphan*/  nm_entry ; 

void
FUNC3(struct name_list *list)
{
	struct name_entry *nm;

	while ((nm = FUNC0(list)) != NULL) {
		FUNC1(nm, nm_entry);
		FUNC3(&nm->nm_sublist);
		FUNC2(nm);
	}
	fingerprint_count = 0;
	class_count = 0;
}