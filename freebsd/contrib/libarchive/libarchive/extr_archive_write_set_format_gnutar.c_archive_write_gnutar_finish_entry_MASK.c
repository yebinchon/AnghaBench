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
struct gnutar {scalar_t__ entry_padding; scalar_t__ entry_bytes_remaining; } ;
struct archive_write {scalar_t__ format_data; } ;

/* Variables and functions */
 int FUNC0 (struct archive_write*,size_t) ; 

__attribute__((used)) static int
FUNC1(struct archive_write *a)
{
	struct gnutar *gnutar;
	int ret;

	gnutar = (struct gnutar *)a->format_data;
	ret = FUNC0(a, (size_t)
	    (gnutar->entry_bytes_remaining + gnutar->entry_padding));
	gnutar->entry_bytes_remaining = gnutar->entry_padding = 0;
	return (ret);
}