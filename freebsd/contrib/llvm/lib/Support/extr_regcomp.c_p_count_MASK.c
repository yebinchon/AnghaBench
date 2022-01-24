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
typedef  int /*<<< orphan*/  uch ;
struct parse {int dummy; } ;

/* Variables and functions */
 int DUPMAX ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  REG_BADBR ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int			/* the value */
FUNC5(struct parse *p)
{
	int count = 0;
	int ndigits = 0;

	while (FUNC1() && FUNC4((uch)FUNC2()) && count <= DUPMAX) {
		count = count*10 + (FUNC0() - '0');
		ndigits++;
	}

	FUNC3(ndigits > 0 && count <= DUPMAX, REG_BADBR);
	return(count);
}