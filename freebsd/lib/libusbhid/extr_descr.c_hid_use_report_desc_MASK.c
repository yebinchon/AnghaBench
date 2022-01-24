#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* report_desc_t ;
struct TYPE_4__ {unsigned int size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  errno ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 

report_desc_t
FUNC2(unsigned char *data, unsigned int size)
{
	report_desc_t r;

	r = FUNC0(sizeof(*r) + size);
	if (r == NULL) {
		errno = ENOMEM;
		return (NULL);
	}
	r->size = size;
	FUNC1(r->data, data, size);
	return (r);
}