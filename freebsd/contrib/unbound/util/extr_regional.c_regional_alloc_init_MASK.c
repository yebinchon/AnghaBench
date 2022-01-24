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
struct regional {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void const*,size_t) ; 
 void* FUNC1 (struct regional*,size_t) ; 

void *
FUNC2(struct regional* r, const void *init, size_t size)
{
	void *s = FUNC1(r, size);
	if(!s) return NULL;
	FUNC0(s, init, size);
	return s;
}