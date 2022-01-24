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
typedef  scalar_t__ uint32_t ;
typedef  int u_int ;
struct vdso_timekeep {scalar_t__ tk_current; struct vdso_timehands* tk_th; int /*<<< orphan*/  tk_enabled; } ;
struct bintime {int dummy; } ;
struct vdso_timehands {scalar_t__ th_gen; int th_scale; int /*<<< orphan*/  th_boottime; struct bintime th_offset; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOSYS ; 
 scalar_t__ FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct bintime*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bintime*,int) ; 
 int FUNC4 (struct vdso_timehands*,int*) ; 

__attribute__((used)) static int
FUNC5(struct bintime *bt, struct vdso_timekeep *tk, int abs)
{
	struct vdso_timehands *th;
	uint32_t curr, gen;
	u_int delta;
	int error;

	do {
		if (!tk->tk_enabled)
			return (ENOSYS);

		curr = FUNC0(&tk->tk_current);
		th = &tk->tk_th[curr];
		gen = FUNC0(&th->th_gen);
		*bt = th->th_offset;
		error = FUNC4(th, &delta);
		if (error == EAGAIN)
			continue;
		if (error != 0)
			return (error);
		FUNC3(bt, th->th_scale * delta);
		if (abs)
			FUNC2(bt, &th->th_boottime);

		/*
		 * Ensure that the load of th_offset is completed
		 * before the load of th_gen.
		 */
		FUNC1();
	} while (curr != tk->tk_current || gen == 0 || gen != th->th_gen);
	return (0);
}