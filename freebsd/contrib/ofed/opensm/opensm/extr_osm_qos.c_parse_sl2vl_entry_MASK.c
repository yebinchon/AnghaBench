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
typedef  unsigned int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char,unsigned int*) ; 

__attribute__((used)) static int FUNC1(const char *str, uint8_t * raw)
{
	unsigned val1, val2;
	const char *p = str;
	p += FUNC0(p, ',', &val1);
	p += FUNC0(p, ',', &val2);
	*raw = (val1 << 4) | (val2 & 0xf);
	return (int)(p - str);
}