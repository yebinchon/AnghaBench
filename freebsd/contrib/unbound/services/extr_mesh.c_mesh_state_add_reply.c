
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef void* uint16_t ;
struct query_info {TYPE_5__* local_alias; TYPE_11__* qname; } ;
struct packed_rrset_data {int count; int * rr_ttl; int * rr_len; int * rr_data; } ;
struct TYPE_15__ {int qname_len; } ;
struct TYPE_22__ {int region; TYPE_2__ qinfo; TYPE_1__* env; } ;
struct mesh_state {struct mesh_reply* reply_list; TYPE_9__ s; } ;
struct edns_data {scalar_t__ opt_list; } ;
struct comm_reply {TYPE_6__* c; } ;
struct mesh_reply {TYPE_10__* local_alias; void* qname; struct mesh_reply* next; int start_time; void* qflags; void* qid; struct edns_data edns; struct comm_reply query_reply; } ;
struct TYPE_20__ {struct packed_rrset_data* data; } ;
struct TYPE_21__ {TYPE_7__ entry; } ;
struct TYPE_19__ {int buffer; } ;
struct TYPE_18__ {TYPE_11__* rrset; int next; } ;
struct TYPE_17__ {scalar_t__ type; scalar_t__ dname; } ;
struct TYPE_16__ {struct packed_rrset_data* data; } ;
struct TYPE_14__ {int * now_tv; } ;
struct TYPE_13__ {TYPE_4__ rk; TYPE_3__ entry; } ;
struct TYPE_12__ {TYPE_8__* rrset; } ;


 int LDNS_HEADER_SIZE ;
 int LDNS_RR_TYPE_CNAME ;
 scalar_t__ edns_opt_copy_region (scalar_t__,int ) ;
 scalar_t__ htons (int ) ;
 int log_assert (int) ;
 struct mesh_reply* regional_alloc (int ,int) ;
 void* regional_alloc_init (int ,TYPE_11__*,int) ;
 void* regional_alloc_zero (int ,int) ;
 int rrset_insert_rr (int ,struct packed_rrset_data*,int ,int ,int ,char*) ;
 scalar_t__ sldns_buffer_at (int ,int ) ;

int mesh_state_add_reply(struct mesh_state* s, struct edns_data* edns,
        struct comm_reply* rep, uint16_t qid, uint16_t qflags,
        const struct query_info* qinfo)
{
 struct mesh_reply* r = regional_alloc(s->s.region,
  sizeof(struct mesh_reply));
 if(!r)
  return 0;
 r->query_reply = *rep;
 r->edns = *edns;
 if(edns->opt_list) {
  r->edns.opt_list = edns_opt_copy_region(edns->opt_list,
   s->s.region);
  if(!r->edns.opt_list)
   return 0;
 }
 r->qid = qid;
 r->qflags = qflags;
 r->start_time = *s->s.env->now_tv;
 r->next = s->reply_list;
 r->qname = regional_alloc_init(s->s.region, qinfo->qname,
  s->s.qinfo.qname_len);
 if(!r->qname)
  return 0;





 if(qinfo->local_alias) {
  struct packed_rrset_data* d;
  struct packed_rrset_data* dsrc;
  r->local_alias = regional_alloc_zero(s->s.region,
   sizeof(*qinfo->local_alias));
  if(!r->local_alias)
   return 0;
  r->local_alias->rrset = regional_alloc_init(s->s.region,
   qinfo->local_alias->rrset,
   sizeof(*qinfo->local_alias->rrset));
  if(!r->local_alias->rrset)
   return 0;
  dsrc = qinfo->local_alias->rrset->entry.data;



  log_assert(!qinfo->local_alias->next && dsrc->count == 1 &&
   qinfo->local_alias->rrset->rk.type ==
   htons(LDNS_RR_TYPE_CNAME));






  log_assert(qinfo->local_alias->rrset->rk.dname ==
   sldns_buffer_at(rep->c->buffer, LDNS_HEADER_SIZE));



  d = regional_alloc_zero(s->s.region, sizeof(*d));
  if(!d)
   return 0;
  r->local_alias->rrset->entry.data = d;
  if(!rrset_insert_rr(s->s.region, d, dsrc->rr_data[0],
   dsrc->rr_len[0], dsrc->rr_ttl[0], "CNAME local alias"))
   return 0;
 } else
  r->local_alias = ((void*)0);

 s->reply_list = r;
 return 1;
}
