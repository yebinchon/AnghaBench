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
struct archive_write {scalar_t__ format_data; } ;
struct _7zip {int wbuff_remaining; int /*<<< orphan*/  wbuff; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int FUNC0 (struct archive_write*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC1(struct archive_write *a)
{
	struct _7zip *zip;
	int r;
	size_t s;

	zip = (struct _7zip *)a->format_data;
	s = sizeof(zip->wbuff) - zip->wbuff_remaining;
	r = FUNC0(a, zip->wbuff, s);
	if (r != ARCHIVE_OK)
		return (r);
	zip->wbuff_remaining = sizeof(zip->wbuff);
	return (r);
}