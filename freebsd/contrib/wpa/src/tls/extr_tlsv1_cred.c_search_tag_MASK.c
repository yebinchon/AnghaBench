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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 

__attribute__((used)) static const u8 * FUNC2(const char *tag, const u8 *buf, size_t len)
{
	size_t i, plen;

	plen = FUNC1(tag);
	if (len < plen)
		return NULL;

	for (i = 0; i < len - plen; i++) {
		if (FUNC0(buf + i, tag, plen) == 0)
			return buf + i;
	}

	return NULL;
}