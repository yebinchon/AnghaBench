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
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 scalar_t__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char const*) ; 

char *
FUNC7(ldns_buffer *buffer)
{
	char *str;

	/* check if buffer ends with \0, if not, and
	   if there is space, add it */
	if (*(FUNC0(buffer, FUNC2(buffer))) != 0) {
		if (!FUNC3(buffer, 1)) {
			return NULL;
		}
		FUNC5(buffer, (uint8_t) '\0');
		if (!FUNC4(buffer, FUNC2(buffer))) {
			return NULL;
		}
	}

	str = FUNC6((const char *)FUNC1(buffer));
        if(!str) {
                return NULL;
        }
	return str;
}