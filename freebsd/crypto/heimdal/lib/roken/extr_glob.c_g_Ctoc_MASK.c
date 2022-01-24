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
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  CHAR_EOS ; 

__attribute__((used)) static void
FUNC0(const Char *str, char *buf)
{
	char *dc;

	for (dc = buf; (*dc++ = *str++) != CHAR_EOS;)
		continue;
}