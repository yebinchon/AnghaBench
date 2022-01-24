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
struct parse {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,char) ; 
 char FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  REG_EBRACK ; 
 int /*<<< orphan*/  REG_ECOLLATE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char FUNC4 (struct parse*,char) ; 

__attribute__((used)) static char			/* value of symbol */
FUNC5(struct parse *p)
{
	char value;

	FUNC3(FUNC2(), REG_EBRACK);
	if (!FUNC0('[', '.'))
		return(FUNC1());

	/* collating symbol */
	value = FUNC4(p, '.');
	FUNC3(FUNC0('.', ']'), REG_ECOLLATE);
	return(value);
}