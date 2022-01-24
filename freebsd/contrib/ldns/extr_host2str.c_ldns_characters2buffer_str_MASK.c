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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 

__attribute__((used)) static void 
FUNC2(ldns_buffer* output,
		size_t amount, const uint8_t* characters)
{
	uint8_t ch;
	while (amount > 0) {
		ch = *characters++;
		if (FUNC0((int)ch) || ch == '\t') {
			if (ch == '\"' || ch == '\\')
				FUNC1(output, "\\%c", ch);
			else
				FUNC1(output, "%c", ch);
		} else {
			FUNC1(output, "\\%03u",
                                (unsigned)(uint8_t) ch);
		}
		amount--;
	}
}