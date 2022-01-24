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
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 scalar_t__ FUNC3 (struct archive*) ; 
 scalar_t__ FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(struct archive *a, void *data, struct archive_entry *ae)
{
	(void)data; /* UNUSED */

	FUNC7("CTime should be set");
	FUNC5(8, FUNC0(ae));
	FUNC7("MTime should be set");
	FUNC5(16, FUNC2(ae));

	if (FUNC1(ae) < 886611)
		return (0);
	if (FUNC3(a)) {
		/* Descend into the current object */
		FUNC7("archive_read_disk_can_descend should work"
			" in metadata filter");
		FUNC6(a, 1, FUNC3(a));
		FUNC7("archive_read_disk_descend should work"
			" in metadata filter");
		FUNC6(a, ARCHIVE_OK, FUNC4(a));
	}
	return (1);
}