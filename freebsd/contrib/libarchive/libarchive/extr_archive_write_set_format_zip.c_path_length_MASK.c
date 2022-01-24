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
struct archive_entry {int dummy; } ;
typedef  scalar_t__ mode_t ;

/* Variables and functions */
 scalar_t__ AE_IFDIR ; 
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 char* FUNC1 (struct archive_entry*) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static size_t
FUNC3(struct archive_entry *entry)
{
	mode_t type;
	const char *path;

	type = FUNC0(entry);
	path = FUNC1(entry);

	if (path == NULL)
		return (0);
	if (type == AE_IFDIR &&
	    (path[0] == '\0' || path[FUNC2(path) - 1] != '/')) {
		return FUNC2(path) + 1;
	} else {
		return FUNC2(path);
	}
}