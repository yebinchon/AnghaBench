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
struct tar {int /*<<< orphan*/  pax_global; } ;
struct archive_read {int dummy; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int FUNC0 (struct archive_read*,struct tar*,int /*<<< orphan*/ *,void const*,size_t*) ; 
 int FUNC1 (struct archive_read*,struct tar*,struct archive_entry*,size_t*) ; 

__attribute__((used)) static int
FUNC2(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const void *h, size_t *unconsumed)
{
	int err;

	err = FUNC0(a, tar, &(tar->pax_global), h, unconsumed);
	if (err != ARCHIVE_OK)
		return (err);
	err = FUNC1(a, tar, entry, unconsumed);
	return (err);
}