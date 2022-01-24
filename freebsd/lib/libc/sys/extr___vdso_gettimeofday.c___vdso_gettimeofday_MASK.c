#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timezone {int dummy; } ;
struct timeval {int dummy; } ;
struct bintime {int dummy; } ;
struct TYPE_4__ {scalar_t__ tk_ver; } ;

/* Variables and functions */
 int ENOSYS ; 
 scalar_t__ VDSO_TK_VER_CURR ; 
 int FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (struct bintime*,struct timeval*) ; 
 int FUNC2 (struct bintime*,TYPE_1__*,int) ; 
 TYPE_1__* tk ; 

int
FUNC3(struct timeval *tv, struct timezone *tz)
{
	struct bintime bt;
	int error;

	if (tz != NULL)
		return (ENOSYS);
	if (tk == NULL) {
		error = FUNC0(&tk);
		if (error != 0 || tk == NULL)
			return (ENOSYS);
	}
	if (tk->tk_ver != VDSO_TK_VER_CURR)
		return (ENOSYS);
	error = FUNC2(&bt, tk, 1);
	if (error != 0)
		return (error);
	FUNC1(&bt, tv);
	return (0);
}