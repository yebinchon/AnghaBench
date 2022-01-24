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
struct archive_write_disk {int /*<<< orphan*/  archive; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct archive_string {int /*<<< orphan*/  s; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_string*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,struct archive_string*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct archive_write_disk *a)
{
	struct archive_string error_string;
	int error_number;
	int rc;
	FUNC2(&error_string);
	rc = FUNC3(a->name, &error_number, &error_string,
	    a->flags);
	if (rc != ARCHIVE_OK) {
		FUNC0(&a->archive, error_number, "%s",
		    error_string.s);
	}
	FUNC1(&error_string);
	return rc;
}