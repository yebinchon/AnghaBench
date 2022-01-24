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
typedef  int /*<<< orphan*/  wint_t ;
struct parse {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,char) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  REG_EBRACK ; 
 int /*<<< orphan*/  REG_ECOLLATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct parse*,char) ; 

__attribute__((used)) static wint_t			/* value of symbol */
FUNC5(struct parse *p)
{
	wint_t value;

	(void)FUNC2(FUNC1(), REG_EBRACK);
	if (!FUNC0('[', '.'))
		return(FUNC3());

	/* collating symbol */
	value = FUNC4(p, '.');
	(void)FUNC2(FUNC0('.', ']'), REG_ECOLLATE);
	return(value);
}