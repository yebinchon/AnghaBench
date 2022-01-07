
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_2__ {int region; } ;
struct mesh_state {struct mesh_cb* cb_list; TYPE_1__ s; } ;
struct edns_data {scalar_t__ opt_list; } ;
struct mesh_cb {struct mesh_cb* next; void* qflags; void* qid; struct edns_data edns; void* cb_arg; int cb; int * buf; } ;
typedef int sldns_buffer ;
typedef int mesh_cb_func_type ;


 scalar_t__ edns_opt_copy_region (scalar_t__,int ) ;
 int fptr_whitelist_mesh_cb (int ) ;
 int log_assert (int ) ;
 struct mesh_cb* regional_alloc (int ,int) ;

int mesh_state_add_cb(struct mesh_state* s, struct edns_data* edns,
        sldns_buffer* buf, mesh_cb_func_type cb, void* cb_arg,
 uint16_t qid, uint16_t qflags)
{
 struct mesh_cb* r = regional_alloc(s->s.region,
  sizeof(struct mesh_cb));
 if(!r)
  return 0;
 r->buf = buf;
 log_assert(fptr_whitelist_mesh_cb(cb));
 r->cb = cb;
 r->cb_arg = cb_arg;
 r->edns = *edns;
 if(edns->opt_list) {
  r->edns.opt_list = edns_opt_copy_region(edns->opt_list,
   s->s.region);
  if(!r->edns.opt_list)
   return 0;
 }
 r->qid = qid;
 r->qflags = qflags;
 r->next = s->cb_list;
 s->cb_list = r;
 return 1;

}
