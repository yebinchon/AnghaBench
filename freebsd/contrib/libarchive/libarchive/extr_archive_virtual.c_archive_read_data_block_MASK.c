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
struct archive {TYPE_1__* vtable; } ;
typedef  int /*<<< orphan*/  la_int64_t ;
struct TYPE_2__ {int (* archive_read_data_block ) (struct archive*,void const**,size_t*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int FUNC0 (struct archive*,void const**,size_t*,int /*<<< orphan*/ *) ; 

int
FUNC1(struct archive *a,
    const void **buff, size_t *s, la_int64_t *o)
{
	return ((a->vtable->archive_read_data_block)(a, buff, s, o));
}