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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*,int,int,int,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*) ; 

void
FUNC6(void)
{
	char	*loc;

	FUNC2("utf8_setlocale");
	loc = FUNC5(LC_CTYPE, "en_US.UTF-8");
	FUNC0(loc, NULL);
	FUNC1();

	FUNC3();
	FUNC4(1, "empty", "", 2, 0, 0, "");
	FUNC4(1, "ascii", "x", -2, -2, -2, "x");
	FUNC4(1, "newline", "a\nb", -2, -2, -2, "a\nb");
	FUNC4(1, "cr", "a\rb", -2, -2, -2, "a\rb");
	FUNC4(1, "tab", "a\tb", -2, -2, -2, "a\tb");
	FUNC4(1, "esc", "\033x", -2, -2, -2, "\\033x");
	FUNC4(1, "inv_badbyte", "\377x", -2, -2, -2, "\\377x");
	FUNC4(1, "inv_nocont", "\341x", -2, -2, -2, "\\341x");
	FUNC4(1, "inv_nolead", "a\200b", -2, -2, -2, "a\\200b");
	FUNC4(1, "sz_ascii", "1234567890123456", -2, -2, 16, "123456789012345");
	FUNC4(1, "sz_esc", "123456789012\033", -2, -2, 16, "123456789012");
	FUNC4(1, "width_ascii", "123", 2, 2, -1, "12");
	FUNC4(1, "width_double", "a\343\201\201", 2, 1, -1, "a");
	FUNC4(1, "double_fit", "a\343\201\201", 3, 3, 4, "a\343\201\201");
	FUNC4(1, "double_spc", "a\343\201\201", 4, 3, 4, "a\343\201\201");

	FUNC2("C_setlocale");
	loc = FUNC5(LC_CTYPE, "C");
	FUNC0(loc, NULL);
	FUNC1();

	FUNC3();
	FUNC4(0, "empty", "", 2, 0, 0, "");
	FUNC4(0, "ascii", "x", -2, -2, -2, "x");
	FUNC4(0, "newline", "a\nb", -2, -2, -2, "a\nb");
	FUNC4(0, "cr", "a\rb", -2, -2, -2, "a\rb");
	FUNC4(0, "tab", "a\tb", -2, -2, -2, "a\tb");
	FUNC4(0, "esc", "\033x", -2, -2, -2, "\\033x");
	FUNC4(0, "inv_badbyte", "\377x", -2, -2, -2, "\\377x");
	FUNC4(0, "inv_nocont", "\341x", -2, -2, -2, "\\341x");
	FUNC4(0, "inv_nolead", "a\200b", -2, -2, -2, "a\\200b");
	FUNC4(0, "sz_ascii", "1234567890123456", -2, -2, 16, "123456789012345");
	FUNC4(0, "sz_esc", "123456789012\033", -2, -2, 16, "123456789012");
	FUNC4(0, "width_ascii", "123", 2, 2, -1, "12");
	FUNC4(0, "width_double", "a\343\201\201", 2, 1, -1, "a");
	FUNC4(0, "double_fit", "a\343\201\201", 7, 5, -1, "a\\343");
	FUNC4(0, "double_spc", "a\343\201\201", 13, 13, 13, "a\\343\\201\\201");
}