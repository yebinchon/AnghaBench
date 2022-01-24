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
 int EDIT_KEY_NONE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int,int,char) ; 
 int FUNC4 (int,int,char) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static enum edit_key_code FUNC7(char *seq)
{
	char last, *pos;
	int param1 = -1, param2 = -1;
	enum edit_key_code ret = EDIT_KEY_NONE;

	last = '\0';
	for (pos = seq; *pos; pos++)
		last = *pos;

	if (seq[1] >= '0' && seq[1] <= '9') {
		param1 = FUNC0(&seq[1]);
		pos = FUNC5(seq, ';');
		if (pos)
			param2 = FUNC0(pos + 1);
	}

	if (seq[0] == '[')
		ret = FUNC3(param1, param2, last);
	else if (seq[0] == 'O')
		ret = FUNC4(param1, param2, last);

	if (ret != EDIT_KEY_NONE)
		return ret;

	FUNC1();
	FUNC6("\rUnknown escape sequence '%s'\n", seq);
	FUNC2();
	return EDIT_KEY_NONE;
}