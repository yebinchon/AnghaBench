
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_qstate {struct mesh_state* mesh_info; } ;
struct mesh_state {int dummy; } ;


 size_t MESH_MAX_SUBSUB ;
 scalar_t__ find_in_subsub (struct mesh_state*,struct mesh_state*,size_t*) ;

__attribute__((used)) static int
mesh_detect_cycle_found(struct module_qstate* qstate, struct mesh_state* dep_m)
{
 struct mesh_state* cyc_m = qstate->mesh_info;
 size_t counter = 0;
 if(!dep_m)
  return 0;
 if(dep_m == cyc_m || find_in_subsub(dep_m, cyc_m, &counter)) {
  if(counter > MESH_MAX_SUBSUB)
   return 2;
  return 1;
 }
 return 0;
}
