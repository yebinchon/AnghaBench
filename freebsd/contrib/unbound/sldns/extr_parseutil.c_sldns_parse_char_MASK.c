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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const**) ; 

int
FUNC1(uint8_t *ch_p, const char** str_p)
{
	switch (**str_p) {

	case '\0':	return 0;

	case '\\':	*str_p += 1;
			return FUNC0(ch_p, str_p);

	default:	*ch_p = (uint8_t)*(*str_p)++;
			return 1;
	}
}