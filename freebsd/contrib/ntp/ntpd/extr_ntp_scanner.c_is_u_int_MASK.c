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
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(
	char *lexeme
	)
{
	int	i;
	int	is_hex;
	
	i = 0;
	if ('0' == lexeme[i] && 'x' == FUNC2((u_char)lexeme[i + 1])) {
		i += 2;
		is_hex = TRUE;
	} else {
		is_hex = FALSE;
	}

	/* Check that all the remaining characters are digits */
	for (; lexeme[i] != '\0'; i++) {
		if (is_hex && !FUNC1((u_char)lexeme[i]))
			return FALSE;
		if (!is_hex && !FUNC0((u_char)lexeme[i]))
			return FALSE;
	}

	return TRUE;
}