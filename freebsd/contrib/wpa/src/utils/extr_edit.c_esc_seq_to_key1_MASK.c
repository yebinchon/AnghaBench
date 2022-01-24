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
typedef  enum edit_key_code { ____Placeholder_edit_key_code } edit_key_code ;

/* Variables and functions */
 int EDIT_KEY_DELETE ; 
 int EDIT_KEY_F10 ; 
 int EDIT_KEY_F11 ; 
 int EDIT_KEY_F12 ; 
 int EDIT_KEY_F5 ; 
 int EDIT_KEY_F6 ; 
 int EDIT_KEY_F7 ; 
 int EDIT_KEY_F8 ; 
 int EDIT_KEY_F9 ; 
 int EDIT_KEY_INSERT ; 
 int EDIT_KEY_NONE ; 
 int EDIT_KEY_PAGE_DOWN ; 
 int EDIT_KEY_PAGE_UP ; 
 int FUNC0 (char) ; 
 int FUNC1 (char) ; 
 int FUNC2 (char) ; 
 int FUNC3 (char) ; 
 int FUNC4 (char) ; 

__attribute__((used)) static enum edit_key_code FUNC5(int param1, int param2, char last)
{
	/* ESC-[<param1>;<param2><last> */

	if (param1 < 0 && param2 < 0)
		return FUNC3(last);

	if (param1 == 1 && param2 == 2)
		return FUNC4(last);

	if (param1 == 1 && param2 == 3)
		return FUNC0(last);

	if (param1 == 1 && param2 == 4)
		return FUNC1(last);

	if (param1 == 1 && param2 == 5)
		return FUNC2(last);

	if (param2 < 0) {
		if (last != '~')
			return EDIT_KEY_NONE;
		switch (param1) {
		case 2:
			return EDIT_KEY_INSERT;
		case 3:
			return EDIT_KEY_DELETE;
		case 5:
			return EDIT_KEY_PAGE_UP;
		case 6:
			return EDIT_KEY_PAGE_DOWN;
		case 15:
			return EDIT_KEY_F5;
		case 17:
			return EDIT_KEY_F6;
		case 18:
			return EDIT_KEY_F7;
		case 19:
			return EDIT_KEY_F8;
		case 20:
			return EDIT_KEY_F9;
		case 21:
			return EDIT_KEY_F10;
		case 23:
			return EDIT_KEY_F11;
		case 24:
			return EDIT_KEY_F12;
		}
	}

	return EDIT_KEY_NONE;
}