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
struct s_fixedpt {int /*<<< orphan*/  fraction; int /*<<< orphan*/  int_part; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(netdissect_options *ndo,
       register const struct s_fixedpt *sfp)
{
	register int i;
	register int f;
	register double ff;

	i = FUNC0(&sfp->int_part);
	f = FUNC0(&sfp->fraction);
	ff = f / 65536.0;		/* shift radix point by 16 bits */
	f = (int)(ff * 1000000.0);	/* Treat fraction as parts per million */
	FUNC1((ndo, "%d.%06d", i, f));
}