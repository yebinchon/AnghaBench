
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct query_info {int dummy; } ;
struct module_qstate {int mesh_info; TYPE_1__* env; } ;
struct mesh_state {int dummy; } ;
struct mesh_area {int dummy; } ;
struct TYPE_2__ {struct mesh_area* mesh; } ;


 struct mesh_state* mesh_area_find (struct mesh_area*,int *,struct query_info*,int ,int,int) ;
 int mesh_detect_cycle_found (struct module_qstate*,struct mesh_state*) ;
 int mesh_state_is_unique (int ) ;

int
mesh_detect_cycle(struct module_qstate* qstate, struct query_info* qinfo,
 uint16_t flags, int prime, int valrec)
{
 struct mesh_area* mesh = qstate->env->mesh;
 struct mesh_state* dep_m = ((void*)0);
 if(!mesh_state_is_unique(qstate->mesh_info))
  dep_m = mesh_area_find(mesh, ((void*)0), qinfo, flags, prime, valrec);
 return mesh_detect_cycle_found(qstate, dep_m);
}
