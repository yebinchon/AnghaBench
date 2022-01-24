#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* min; int passphrase_words; } ;
typedef  TYPE_1__ passwdqc_params_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int) ; 

__attribute__((used)) static int FUNC7(passwdqc_params_t *params, const char *newpass)
{
	int length, classes, words, chars;
	int digits, lowers, uppers, others, unknowns;
	int c, p;

	length = classes = words = chars = 0;
	digits = lowers = uppers = others = unknowns = 0;
	p = ' ';
	while ((c = (unsigned char)newpass[length])) {
		length++;

		if (!FUNC2(c)) unknowns++; else
		if (FUNC3(c)) digits++; else
		if (FUNC4(c)) lowers++; else
		if (FUNC5(c)) uppers++; else
			others++;

		if (FUNC2(c) && FUNC1(c) && FUNC2(p) && !FUNC1(p))
			words++;
		p = c;

		if (!FUNC6(&newpass[length], c))
			chars++;
	}

	if (!length) return 1;

/* Upper case characters and digits used in common ways don't increase the
 * strength of a password */
	c = (unsigned char)newpass[0];
	if (uppers && FUNC2(c) && FUNC5(c)) uppers--;
	c = (unsigned char)newpass[length - 1];
	if (digits && FUNC2(c) && FUNC3(c)) digits--;

/* Count the number of different character classes we've seen. We assume
 * that there're no non-ASCII characters for digits. */
	classes = 0;
	if (digits) classes++;
	if (lowers) classes++;
	if (uppers) classes++;
	if (others) classes++;
	if (unknowns && (!classes || (digits && classes == 1))) classes++;

	for (; classes > 0; classes--)
	switch (classes) {
	case 1:
		if (length >= params->min[0] &&
		    chars >= FUNC0(10, params->min[0]) - 1)
			return 0;
		return 1;

	case 2:
		if (length >= params->min[1] &&
		    chars >= FUNC0(36, params->min[1]) - 1)
			return 0;
		if (!params->passphrase_words ||
		    words < params->passphrase_words)
			continue;
		if (length >= params->min[2] &&
		    chars >= FUNC0(27, params->min[2]) - 1)
			return 0;
		continue;

	case 3:
		if (length >= params->min[3] &&
		    chars >= FUNC0(62, params->min[3]) - 1)
			return 0;
		continue;

	case 4:
		if (length >= params->min[4] &&
		    chars >= FUNC0(95, params->min[4]) - 1)
			return 0;
		continue;
	}

	return 1;
}