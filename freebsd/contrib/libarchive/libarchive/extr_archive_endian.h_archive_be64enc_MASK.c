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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC1(void *pp, uint64_t u)
{
	unsigned char *p = (unsigned char *)pp;

	FUNC0(p, (uint32_t)(u >> 32));
	FUNC0(p + 4, (uint32_t)(u & 0xffffffff));
}