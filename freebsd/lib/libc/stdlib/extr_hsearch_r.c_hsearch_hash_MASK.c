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
typedef  size_t uint8_t ;

/* Variables and functions */
 int CHAR_BIT ; 
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static size_t
FUNC2(size_t offset_basis, const char *str)
{
	size_t hash;

	hash = offset_basis;
	while (*str != '\0') {
		hash ^= (uint8_t)*str++;
		if (sizeof(size_t) * CHAR_BIT <= 32)
			hash *= FUNC0(16777619);
		else
			hash *= FUNC1(1099511628211);
	}
	return (hash);
}