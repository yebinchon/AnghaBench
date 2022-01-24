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
struct archive_write_disk {int /*<<< orphan*/  lookup_uid_data; int /*<<< orphan*/  (* lookup_uid ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  archive; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  la_int64_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_STATE_ANY ; 
 int /*<<< orphan*/  ARCHIVE_WRITE_DISK_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

int64_t
FUNC2(struct archive *_a, const char *name, la_int64_t id)
{
	struct archive_write_disk *a = (struct archive_write_disk *)_a;
	FUNC0(&a->archive, ARCHIVE_WRITE_DISK_MAGIC,
	    ARCHIVE_STATE_ANY, "archive_write_disk_uid");
	if (a->lookup_uid)
		return (a->lookup_uid)(a->lookup_uid_data, name, id);
	return (id);
}