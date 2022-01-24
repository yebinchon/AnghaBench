#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int us_len; int* us_buf; } ;
typedef  TYPE_1__ unicode_string ;
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (char) ; 

__attribute__((used)) static uint8_t
FUNC1(unicode_string *str1, unicode_string *str2,
	uint8_t caseinsensitive)
{
	int			i;

	if (str1->us_len != str2->us_len)
		return (FALSE);

	for (i = 0; i < str1->us_len; i++) {
		if (caseinsensitive == TRUE) {
			if (FUNC0((char)(str1->us_buf[i] & 0xFF)) !=
			    FUNC0((char)(str2->us_buf[i] & 0xFF)))
				return (FALSE);
		} else {
			if (str1->us_buf[i] != str2->us_buf[i])
				return (FALSE);
		}
	}

	return (TRUE);
}