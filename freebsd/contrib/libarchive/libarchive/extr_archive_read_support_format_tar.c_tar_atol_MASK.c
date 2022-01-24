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
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char const*,size_t) ; 

__attribute__((used)) static int64_t
FUNC2(const char *p, size_t char_cnt)
{
	/*
	 * Technically, GNU tar considers a field to be in base-256
	 * only if the first byte is 0xff or 0x80.
	 */
	if (*p & 0x80)
		return (FUNC0(p, char_cnt));
	return (FUNC1(p, char_cnt));
}