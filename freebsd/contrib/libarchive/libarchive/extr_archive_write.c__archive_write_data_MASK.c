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
struct archive_write {int /*<<< orphan*/  (* format_write_data ) (struct archive_write*,void const*,size_t) ;int /*<<< orphan*/  archive; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_STATE_DATA ; 
 int /*<<< orphan*/  ARCHIVE_WRITE_MAGIC ; 
 size_t INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_write*,void const*,size_t) ; 

__attribute__((used)) static ssize_t
FUNC3(struct archive *_a, const void *buff, size_t s)
{
	struct archive_write *a = (struct archive_write *)_a;
	const size_t max_write = INT_MAX;

	FUNC0(&a->archive, ARCHIVE_WRITE_MAGIC,
	    ARCHIVE_STATE_DATA, "archive_write_data");
	/* In particular, this catches attempts to pass negative values. */
	if (s > max_write)
		s = max_write;
	FUNC1(&a->archive);
	return ((a->format_write_data)(a, buff, s));
}