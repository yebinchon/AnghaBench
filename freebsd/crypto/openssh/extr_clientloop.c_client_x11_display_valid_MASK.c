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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int /*<<< orphan*/  SSH_X11_VALID_DISPLAY_CHARS ; 
 int /*<<< orphan*/  FUNC0 (char*,char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4(const char *display)
{
	size_t i, dlen;

	if (display == NULL)
		return 0;

	dlen = FUNC3(display);
	for (i = 0; i < dlen; i++) {
		if (!FUNC1((u_char)display[i]) &&
		    FUNC2(SSH_X11_VALID_DISPLAY_CHARS, display[i]) == NULL) {
			FUNC0("Invalid character '%c' in DISPLAY", display[i]);
			return 0;
		}
	}
	return 1;
}