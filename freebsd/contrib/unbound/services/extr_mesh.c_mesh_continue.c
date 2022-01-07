
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct query_info {int dummy; } ;
struct TYPE_10__ {size_t curmod; scalar_t__ return_rcode; scalar_t__ need_refetch; int qinfo; int ** minfo; } ;
struct TYPE_9__ {scalar_t__ count; } ;
struct mesh_state {scalar_t__ num_activated; TYPE_4__ s; TYPE_3__ sub_set; } ;
struct TYPE_8__ {size_t num; TYPE_1__** mod; } ;
struct mesh_area {TYPE_2__ mods; } ;
typedef enum module_ext_state { ____Placeholder_module_ext_state } module_ext_state ;
typedef enum module_ev { ____Placeholder_module_ev } module_ev ;
struct TYPE_7__ {int (* clear ) (TYPE_4__*,size_t) ;int name; } ;


 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RCODE_SERVFAIL ;
 scalar_t__ MESH_MAX_ACTIVATION ;
 int VERB_QUERY ;
 int fptr_ok (int ) ;
 int fptr_whitelist_mod_clear (int (*) (TYPE_4__*,size_t)) ;
 int log_err (char*,...) ;
 int log_query_info (int ,char*,int *) ;
 int mesh_copy_qinfo (struct mesh_state*,struct query_info**,int *) ;
 int mesh_query_done (struct mesh_state*) ;
 int mesh_schedule_prefetch (struct mesh_area*,struct query_info*,int ,int ,int) ;
 int mesh_state_delete (TYPE_4__*) ;
 int mesh_walk_supers (struct mesh_area*,struct mesh_state*) ;
 int module_error ;
 int module_event_moddone ;
 int module_event_pass ;
 int module_finished ;
 int module_restart_next ;
 int module_wait_module ;
 int module_wait_subquery ;
 int stub1 (TYPE_4__*,size_t) ;

__attribute__((used)) static int
mesh_continue(struct mesh_area* mesh, struct mesh_state* mstate,
 enum module_ext_state s, enum module_ev* ev)
{
 mstate->num_activated++;
 if(mstate->num_activated > MESH_MAX_ACTIVATION) {

  log_err("internal error: looping module (%s) stopped",
   mesh->mods.mod[mstate->s.curmod]->name);
  log_query_info(0, "pass error for qstate",
   &mstate->s.qinfo);
  s = module_error;
 }
 if(s == module_wait_module || s == module_restart_next) {

  mstate->s.curmod++;
  if(mesh->mods.num == mstate->s.curmod) {
   log_err("Cannot pass to next module; at last module");
   log_query_info(VERB_QUERY, "pass error for qstate",
    &mstate->s.qinfo);
   mstate->s.curmod--;
   return mesh_continue(mesh, mstate, module_error, ev);
  }
  if(s == module_restart_next) {
   int curmod = mstate->s.curmod;
   for(; mstate->s.curmod < mesh->mods.num;
    mstate->s.curmod++) {
    fptr_ok(fptr_whitelist_mod_clear(
     mesh->mods.mod[mstate->s.curmod]->clear));
    (*mesh->mods.mod[mstate->s.curmod]->clear)
     (&mstate->s, mstate->s.curmod);
    mstate->s.minfo[mstate->s.curmod] = ((void*)0);
   }
   mstate->s.curmod = curmod;
  }
  *ev = module_event_pass;
  return 1;
 }
 if(s == module_wait_subquery && mstate->sub_set.count == 0) {
  log_err("module cannot wait for subquery, subquery list empty");
  log_query_info(VERB_QUERY, "pass error for qstate",
   &mstate->s.qinfo);
  s = module_error;
 }
 if(s == module_error && mstate->s.return_rcode == LDNS_RCODE_NOERROR) {

  mstate->s.return_rcode = LDNS_RCODE_SERVFAIL;
 }
 if(s == module_error) {
  mesh_query_done(mstate);
  mesh_walk_supers(mesh, mstate);
  mesh_state_delete(&mstate->s);
  return 0;
 }
 if(s == module_finished) {
  if(mstate->s.curmod == 0) {
   struct query_info* qinfo = ((void*)0);
   uint16_t qflags;

   mesh_query_done(mstate);
   mesh_walk_supers(mesh, mstate);





   if(mstate->s.need_refetch)
    mesh_copy_qinfo(mstate, &qinfo, &qflags);

   mesh_state_delete(&mstate->s);
   if(qinfo) {
    mesh_schedule_prefetch(mesh, qinfo, qflags,
     0, 1);
   }
   return 0;
  }

  mstate->s.curmod --;
  *ev = module_event_moddone;
  return 1;
 }
 return 0;
}
