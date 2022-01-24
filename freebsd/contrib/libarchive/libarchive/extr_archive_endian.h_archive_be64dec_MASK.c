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

/* Variables and functions */
 int FUNC0 (unsigned char const*) ; 

__attribute__((used)) static inline uint64_t
FUNC1(const void *pp)
{
	unsigned char const *p = (unsigned char const *)pp;

	return (((uint64_t)FUNC0(p) << 32) | FUNC0(p + 4));
}