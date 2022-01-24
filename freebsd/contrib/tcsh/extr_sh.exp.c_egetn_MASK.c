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
typedef  int /*<<< orphan*/  tcsh_number_t ;
typedef  char Char ;

/* Variables and functions */
 int ERR_EXPRESSION ; 
 int ERR_NAME ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static tcsh_number_t
FUNC3(const Char *cp)
{
    if (*cp && *cp != '-' && !FUNC0(*cp))
	FUNC2(ERR_NAME | ERR_EXPRESSION);
    return (FUNC1(cp));
}