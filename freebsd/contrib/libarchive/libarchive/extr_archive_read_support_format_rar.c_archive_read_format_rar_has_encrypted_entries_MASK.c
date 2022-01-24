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
struct rar {int has_encrypted_entries; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW ; 

__attribute__((used)) static int
FUNC0(struct archive_read *_a)
{
	if (_a && _a->format) {
		struct rar * rar = (struct rar *)_a->format->data;
		if (rar) {
			return rar->has_encrypted_entries;
		}
	}
	return ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW;
}