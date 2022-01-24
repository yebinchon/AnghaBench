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
 unsigned int AUDIT_TRIGGER_CLOSE_AND_DIE ; 
 unsigned int AUDIT_TRIGGER_EXPIRE_TRAILS ; 
 unsigned int AUDIT_TRIGGER_INITIALIZE ; 
 unsigned int AUDIT_TRIGGER_READ_FILE ; 
 unsigned int AUDIT_TRIGGER_ROTATE_USER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(int argc, char **argv)
{
	int ch;
	unsigned int trigger = 0;

	if (argc != 2)
		FUNC4();

	while ((ch = FUNC1(argc, argv, "einst")) != -1) {
		switch(ch) {

		case 'e':
			trigger = AUDIT_TRIGGER_EXPIRE_TRAILS;
			break;

		case 'i':
			trigger = AUDIT_TRIGGER_INITIALIZE;
			break;

		case 'n':
			trigger = AUDIT_TRIGGER_ROTATE_USER;
			break;

		case 's':
			trigger = AUDIT_TRIGGER_READ_FILE;
			break;

		case 't':
			trigger = AUDIT_TRIGGER_CLOSE_AND_DIE;
			break;

		case '?':
		default:
			FUNC4();
			break;
		}
	}
	if (FUNC3(trigger) < 0) 
		FUNC0(-1);

	FUNC2("Trigger sent.\n");
	FUNC0 (0);
}