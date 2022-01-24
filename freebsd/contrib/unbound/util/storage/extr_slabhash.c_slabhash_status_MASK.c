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
struct slabhash {size_t size; int /*<<< orphan*/ * array; int /*<<< orphan*/  shift; scalar_t__ mask; } ;
typedef  int /*<<< orphan*/  num ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,unsigned int) ; 

void FUNC3(struct slabhash* sl, const char* id, int extended)
{
	size_t i;
	char num[17];
	FUNC0("Slabhash %s: %u tables mask=%x shift=%d", 
		id, (unsigned)sl->size, (unsigned)sl->mask, sl->shift);
	for(i=0; i<sl->size; i++) {
		FUNC2(num, sizeof(num), "table %u", (unsigned)i);
		FUNC1(sl->array[i], num, extended);
	}
}