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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct _region {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC1 (struct _region*) ; 
 size_t FUNC2 (struct _region*) ; 

uint32_t
FUNC3(struct _region *r)
{
	const uint8_t *p;
	uint32_t hash, tmp;
	size_t i;

	hash = 0;
	p = FUNC1(r);

	for (i = FUNC2(r); i > 0; i--) {
		hash <<= 4;
		hash += FUNC0(*p);
		tmp = hash & 0xF0000000;
		if (tmp != 0) {
			hash ^= tmp;
			hash ^= tmp >> 24;
		}
		p++;
	}
	return (hash);
}