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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  REG_EMPTY ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct parse*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct parse *p)
{
	FUNC2(FUNC1(), REG_EMPTY);
	while (FUNC1())
		FUNC3(p, FUNC0());
}