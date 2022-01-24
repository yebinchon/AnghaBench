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
typedef  scalar_t__ uintmax_t ;
typedef  scalar_t__ u_long ;
struct name_table {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct name_table*,scalar_t__*,int*) ; 

__attribute__((used)) static bool
FUNC2(FILE *fp, struct name_table *table, u_long lval, u_long *rem)
{
	uintmax_t val;
	bool printed;

	if (lval == 0) {
		FUNC0("0", fp);
		if (rem != NULL)
			*rem = 0;
		return (true);
	}

	printed = false;
	val = lval;
	FUNC1(fp, table, &val, &printed);
	if (rem != NULL)
		*rem = val;
	return (printed);
}