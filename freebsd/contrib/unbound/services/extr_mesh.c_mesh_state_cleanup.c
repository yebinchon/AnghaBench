
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int region; TYPE_3__* env; int * ext_state; int ** minfo; } ;
struct mesh_state {TYPE_4__ s; struct mesh_cb* cb_list; struct mesh_reply* reply_list; int replies_sent; } ;
struct mesh_reply {int query_reply; struct mesh_reply* next; } ;
struct mesh_cb {int cb_arg; int (* cb ) (int ,int ,int *,int ,int *,int ) ;struct mesh_cb* next; } ;
struct TYPE_7__ {int num; TYPE_1__** mod; } ;
struct mesh_area {TYPE_2__ mods; int num_reply_addrs; } ;
struct TYPE_8__ {int alloc; struct mesh_area* mesh; } ;
struct TYPE_6__ {int (* clear ) (TYPE_4__*,int) ;} ;


 int LDNS_RCODE_SERVFAIL ;
 int alloc_reg_release (int ,int ) ;
 int comm_point_drop_reply (int *) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_mesh_cb (int (*) (int ,int ,int *,int ,int *,int )) ;
 int fptr_whitelist_mod_clear (int (*) (TYPE_4__*,int)) ;
 int module_finished ;
 int sec_status_unchecked ;
 int stub1 (int ,int ,int *,int ,int *,int ) ;
 int stub2 (TYPE_4__*,int) ;

void
mesh_state_cleanup(struct mesh_state* mstate)
{
 struct mesh_area* mesh;
 int i;
 if(!mstate)
  return;
 mesh = mstate->s.env->mesh;

 if(!mstate->replies_sent) {
  struct mesh_reply* rep = mstate->reply_list;
  struct mesh_cb* cb;



  mstate->reply_list = ((void*)0);
  for(; rep; rep=rep->next) {
   comm_point_drop_reply(&rep->query_reply);
   mesh->num_reply_addrs--;
  }
  while((cb = mstate->cb_list)!=((void*)0)) {
   mstate->cb_list = cb->next;
   fptr_ok(fptr_whitelist_mesh_cb(cb->cb));
   (*cb->cb)(cb->cb_arg, LDNS_RCODE_SERVFAIL, ((void*)0),
    sec_status_unchecked, ((void*)0), 0);
   mesh->num_reply_addrs--;
  }
 }


 for(i=0; i<mesh->mods.num; i++) {
  fptr_ok(fptr_whitelist_mod_clear(mesh->mods.mod[i]->clear));
  (*mesh->mods.mod[i]->clear)(&mstate->s, i);
  mstate->s.minfo[i] = ((void*)0);
  mstate->s.ext_state[i] = module_finished;
 }
 alloc_reg_release(mstate->s.env->alloc, mstate->s.region);
}
