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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lcl_rwlock ; 
 struct tm* FUNC2 (int /*<<< orphan*/  const* const,long,struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

struct tm *
FUNC4(const time_t *const timep, struct tm *tmp)
{
	FUNC0(&lcl_rwlock);
	FUNC3(1);
	tmp = FUNC2(timep, 0L, tmp);
	FUNC1(&lcl_rwlock);
	return tmp;
}