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
#define  EDIT_KEY_BACKSPACE 140 
#define  EDIT_KEY_CTRL_A 139 
#define  EDIT_KEY_CTRL_E 138 
#define  EDIT_KEY_CTRL_H 137 
#define  EDIT_KEY_CTRL_J 136 
#define  EDIT_KEY_CTRL_R 135 
#define  EDIT_KEY_DOWN 134 
#define  EDIT_KEY_END 133 
#define  EDIT_KEY_ENTER 132 
 int EDIT_KEY_EOF ; 
#define  EDIT_KEY_HOME 131 
#define  EDIT_KEY_LEFT 130 
 int EDIT_KEY_NONE ; 
#define  EDIT_KEY_RIGHT 129 
#define  EDIT_KEY_UP 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static enum edit_key_code FUNC5(enum edit_key_code c)
{
	switch (c) {
	case EDIT_KEY_ENTER:
	case EDIT_KEY_CTRL_J:
	case EDIT_KEY_LEFT:
	case EDIT_KEY_RIGHT:
	case EDIT_KEY_HOME:
	case EDIT_KEY_END:
	case EDIT_KEY_CTRL_A:
	case EDIT_KEY_CTRL_E:
		FUNC4();
		return c;
	case EDIT_KEY_DOWN:
	case EDIT_KEY_UP:
		FUNC1();
		return EDIT_KEY_EOF;
	case EDIT_KEY_CTRL_H:
	case EDIT_KEY_BACKSPACE:
		FUNC0();
		break;
	case EDIT_KEY_CTRL_R:
		FUNC3();
		break;
	default:
		if (c >= 32 && c <= 255)
			FUNC2(c);
		break;
	}

	return EDIT_KEY_NONE;
}