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
typedef  int /*<<< orphan*/  uint16_t ;
struct query_info {int dummy; } ;
struct module_qstate {int /*<<< orphan*/  mesh_info; TYPE_1__* env; } ;
struct mesh_state {int dummy; } ;
struct mesh_area {int dummy; } ;
struct TYPE_2__ {struct mesh_area* mesh; } ;

/* Variables and functions */
 struct mesh_state* FUNC0 (struct mesh_area*,int /*<<< orphan*/ *,struct query_info*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct module_qstate*,struct mesh_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int 
FUNC3(struct module_qstate* qstate, struct query_info* qinfo,
	uint16_t flags, int prime, int valrec)
{
	struct mesh_area* mesh = qstate->env->mesh;
	struct mesh_state* dep_m = NULL;
	if(!FUNC2(qstate->mesh_info))
		dep_m = FUNC0(mesh, NULL, qinfo, flags, prime, valrec);
	return FUNC1(qstate, dep_m);
}