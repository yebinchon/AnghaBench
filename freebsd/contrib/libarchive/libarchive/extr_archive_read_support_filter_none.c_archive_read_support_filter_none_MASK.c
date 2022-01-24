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
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

int
FUNC1(struct archive *a)
{
	FUNC0(a, ARCHIVE_READ_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_read_support_filter_none");

	return (ARCHIVE_OK);
}