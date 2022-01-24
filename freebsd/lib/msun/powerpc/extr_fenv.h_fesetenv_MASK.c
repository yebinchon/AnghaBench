#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  __reg; } ;
union __fpscr {int /*<<< orphan*/  __d; TYPE_1__ __bits; } ;
typedef  int /*<<< orphan*/  fenv_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

inline int
FUNC1(const fenv_t *__envp)
{
	union __fpscr __r;

	__r.__bits.__reg = *__envp;
	FUNC0(__r.__d);
	return (0);
}