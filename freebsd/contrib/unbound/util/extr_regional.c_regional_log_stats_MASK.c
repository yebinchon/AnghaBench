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
 int ALIGNMENT ; 
 int REGIONAL_CHUNK_SIZE ; 
 int REGIONAL_LARGE_OBJECT_SIZE ; 
 scalar_t__ FUNC0 (struct regional*) ; 
 scalar_t__ FUNC1 (struct regional*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,unsigned int) ; 

void 
FUNC4(struct regional *r)
{
	/* some basic assertions put here (non time critical code) */
	FUNC2(ALIGNMENT >= sizeof(char*));
	FUNC2(REGIONAL_CHUNK_SIZE > ALIGNMENT);
	FUNC2(REGIONAL_CHUNK_SIZE-ALIGNMENT > REGIONAL_LARGE_OBJECT_SIZE);
	FUNC2(REGIONAL_CHUNK_SIZE >= sizeof(struct regional));
	/* debug print */
	FUNC3("regional %u chunks, %u large",
		(unsigned)FUNC0(r), (unsigned)FUNC1(r));
}