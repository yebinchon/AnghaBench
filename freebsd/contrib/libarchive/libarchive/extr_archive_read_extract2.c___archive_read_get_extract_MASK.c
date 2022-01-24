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
struct archive_read_extract {int dummy; } ;
struct archive_read {struct archive_read_extract* extract; int /*<<< orphan*/  cleanup_archive_extract; int /*<<< orphan*/  archive; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  archive_read_extract_cleanup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int,int) ; 

struct archive_read_extract *
FUNC2(struct archive_read *a)
{
	if (a->extract == NULL) {
		a->extract = (struct archive_read_extract *)FUNC1(1, sizeof(*a->extract));
		if (a->extract == NULL) {
			FUNC0(&a->archive, ENOMEM, "Can't extract");
			return (NULL);
		}
		a->cleanup_archive_extract = archive_read_extract_cleanup;
	}
	return (a->extract);
}