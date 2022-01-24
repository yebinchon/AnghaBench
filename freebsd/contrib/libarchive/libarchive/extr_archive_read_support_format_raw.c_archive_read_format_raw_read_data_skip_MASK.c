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
struct raw_info {int end_of_file; scalar_t__ unconsumed; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_read*,scalar_t__) ; 

__attribute__((used)) static int
FUNC1(struct archive_read *a)
{
	struct raw_info *info = (struct raw_info *)(a->format->data);

	/* Consume the bytes we read last time. */
	if (info->unconsumed) {
		FUNC0(a, info->unconsumed);
		info->unconsumed = 0;
	}
	info->end_of_file = 1;
	return (ARCHIVE_OK);
}