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
struct _citrus_mapper_std {int /*<<< orphan*/  ms_file; int /*<<< orphan*/  ms_db; int /*<<< orphan*/  (* ms_uninit ) (struct _citrus_mapper_std*) ;} ;
struct _citrus_mapper {struct _citrus_mapper_std* cm_closure; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct _citrus_mapper_std*) ; 
 int /*<<< orphan*/  FUNC3 (struct _citrus_mapper_std*) ; 

__attribute__((used)) static void
/*ARGSUSED*/
FUNC4(struct _citrus_mapper *cm)
{
	struct _citrus_mapper_std *ms;

	ms = cm->cm_closure;
	if (ms->ms_uninit)
		(*ms->ms_uninit)(ms);
	FUNC0(ms->ms_db);
	FUNC1(&ms->ms_file);
	FUNC2(ms);
}