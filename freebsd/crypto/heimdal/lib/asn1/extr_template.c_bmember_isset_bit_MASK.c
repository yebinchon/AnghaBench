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

/* Variables and functions */

__attribute__((used)) static int
FUNC0(const void *data, unsigned int bit, size_t size)
{
#ifdef WORDS_BIGENDIAN
    if ((*(unsigned int *)data) & (1 << ((size * 8) - bit - 1)))
	return 1;
    return 0;
#else
    if ((*(unsigned int *)data) & (1 << bit))
	return 1;
    return 0;
#endif
}