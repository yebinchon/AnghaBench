#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* acl_entry_t ;
struct TYPE_7__ {int /*<<< orphan*/  ae_flags; int /*<<< orphan*/  ae_entry_type; int /*<<< orphan*/  ae_perm; int /*<<< orphan*/  ae_id; int /*<<< orphan*/  ae_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 

int
FUNC3(acl_entry_t dest_d, acl_entry_t src_d)
{

	if (src_d == NULL || dest_d == NULL || src_d == dest_d) {
		errno = EINVAL;
		return (-1);
	}

	/*
	 * Can we brand the new entry the same as the source entry?
	 */
	if (!FUNC2(dest_d, FUNC0(src_d))) {
		errno = EINVAL;
		return (-1);
	}

	FUNC1(dest_d, FUNC0(src_d));

	dest_d->ae_tag = src_d->ae_tag;
	dest_d->ae_id = src_d->ae_id;
	dest_d->ae_perm = src_d->ae_perm;
	dest_d->ae_entry_type = src_d->ae_entry_type;
	dest_d->ae_flags = src_d->ae_flags;

	return (0);
}