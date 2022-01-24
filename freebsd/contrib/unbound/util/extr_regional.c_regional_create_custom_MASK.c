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
struct regional {size_t first_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct regional*) ; 

struct regional* 
FUNC3(size_t size)
{
	struct regional* r = (struct regional*)FUNC1(size);
	FUNC0(sizeof(struct regional) <= size);
	if(!r) return NULL;
	r->first_size = size;
	FUNC2(r);
	return r;
}