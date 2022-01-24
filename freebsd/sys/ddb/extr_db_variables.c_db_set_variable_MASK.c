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
struct db_variable {int dummy; } ;
typedef  int /*<<< orphan*/  db_expr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct db_variable**) ; 
 int FUNC1 (struct db_variable*,int /*<<< orphan*/ ) ; 

int
FUNC2(db_expr_t value)
{
	struct db_variable *vp;

	if (!FUNC0(&vp))
		return (0);

	return (FUNC1(vp, value));
}