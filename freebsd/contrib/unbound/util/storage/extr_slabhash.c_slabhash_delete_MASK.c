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
struct slabhash {size_t size; struct slabhash* array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slabhash*) ; 
 int /*<<< orphan*/  FUNC1 (struct slabhash) ; 

void FUNC2(struct slabhash* sl)
{
	if(!sl)
		return;
	if(sl->array) {
		size_t i;
		for(i=0; i<sl->size; i++)
			FUNC1(sl->array[i]);
		FUNC0(sl->array);
	}
	FUNC0(sl);
}