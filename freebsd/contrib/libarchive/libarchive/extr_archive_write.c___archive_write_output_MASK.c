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
struct archive_write {int /*<<< orphan*/  filter_first; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,void const*,size_t) ; 

int
FUNC1(struct archive_write *a, const void *buff, size_t length)
{
	return (FUNC0(a->filter_first, buff, length));
}