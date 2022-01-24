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

/* Variables and functions */
 scalar_t__ _pw_filesdone ; 
 int /*<<< orphan*/ * _pw_fp ; 
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 char* pwfile ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(void)
{

	_pw_filesdone = 0;
	if (_pw_fp) {
		FUNC1(_pw_fp);
		return 1;
	}
	if (pwfile[0] == '\0')			/* sanity check */
		return 0;
	_pw_fp = FUNC0(pwfile, "r");
	if (_pw_fp != NULL)
		return 1;
	FUNC2("Can't open `%s'", pwfile);
	return 0;
}