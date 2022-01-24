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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  randval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,size_t) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static __inline void
FUNC2(void *space, size_t len)
{
	uint16_t *sb = space;
	uint16_t randval;

	while (len >= sizeof(randval)) {
		*sb++ = (uint16_t)FUNC1();
		len -= sizeof(*sb);
	}
	randval = (uint16_t)FUNC1();
	FUNC0(sb, &randval, len);
}