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
struct ptable {int type; } ;
typedef  enum ptable_type { ____Placeholder_ptable_type } ptable_type ;

/* Variables and functions */

enum ptable_type
FUNC0(const struct ptable *table)
{

	return (table->type);
}