
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct query_info {int dummy; } ;
struct module_qstate {int mesh_info; TYPE_2__* env; } ;
struct TYPE_3__ {int count; } ;
struct mesh_state {TYPE_1__ super_set; int cb_list; int reply_list; } ;
struct mesh_area {scalar_t__ num_detached_states; } ;
struct TYPE_4__ {struct mesh_area* mesh; } ;


 int log_assert (int) ;
 int mesh_add_sub (struct module_qstate*,struct query_info*,int ,int,int,struct module_qstate**,struct mesh_state**) ;
 int mesh_state_attachment (int ,struct mesh_state*) ;

int mesh_attach_sub(struct module_qstate* qstate, struct query_info* qinfo,
        uint16_t qflags, int prime, int valrec, struct module_qstate** newq)
{
 struct mesh_area* mesh = qstate->env->mesh;
 struct mesh_state* sub = ((void*)0);
 int was_detached;
 if(!mesh_add_sub(qstate, qinfo, qflags, prime, valrec, newq, &sub))
  return 0;
 was_detached = (sub->super_set.count == 0);
 if(!mesh_state_attachment(qstate->mesh_info, sub))
  return 0;

 if(!sub->reply_list && !sub->cb_list && was_detached &&
  sub->super_set.count == 1) {

  log_assert(mesh->num_detached_states > 0);
  mesh->num_detached_states--;
 }

 return 1;
}
