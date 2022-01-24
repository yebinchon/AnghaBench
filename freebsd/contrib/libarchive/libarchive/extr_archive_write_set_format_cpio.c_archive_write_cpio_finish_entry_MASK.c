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
struct cpio {scalar_t__ entry_bytes_remaining; } ;
struct archive_write {scalar_t__ format_data; } ;

/* Variables and functions */
 int FUNC0 (struct archive_write*,size_t) ; 

__attribute__((used)) static int
FUNC1(struct archive_write *a)
{
	struct cpio *cpio;

	cpio = (struct cpio *)a->format_data;
	return (FUNC0(a,
		(size_t)cpio->entry_bytes_remaining));
}