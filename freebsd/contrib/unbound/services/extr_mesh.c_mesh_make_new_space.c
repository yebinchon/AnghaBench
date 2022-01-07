
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_8__ {int qclass; int qtype; int qname; } ;
struct TYPE_10__ {int return_rcode; int * return_msg; TYPE_3__ qinfo; } ;
struct TYPE_9__ {scalar_t__ count; } ;
struct mesh_state {scalar_t__ list_select; TYPE_5__ s; TYPE_4__ super_set; TYPE_2__* reply_list; } ;
struct mesh_area {scalar_t__ num_reply_states; scalar_t__ max_reply_states; int * qbuf_bak; int stats_jostled; int jostle_max; TYPE_1__* env; struct mesh_state* jostle_first; } ;
typedef int sldns_buffer ;
struct TYPE_7__ {int start_time; } ;
struct TYPE_6__ {int now_tv; } ;


 int LDNS_RCODE_SERVFAIL ;
 int VERB_ALGO ;
 int log_nametypeclass (int ,char*,int ,int ,int ) ;
 scalar_t__ mesh_jostle_list ;
 int mesh_state_delete (TYPE_5__*) ;
 int mesh_walk_supers (struct mesh_area*,struct mesh_state*) ;
 int sldns_buffer_copy (int *,int *) ;
 scalar_t__ timeval_smaller (int *,struct timeval*) ;
 int timeval_subtract (struct timeval*,int ,int *) ;
 int verbose (int ,char*) ;

int mesh_make_new_space(struct mesh_area* mesh, sldns_buffer* qbuf)
{
 struct mesh_state* m = mesh->jostle_first;

 if(mesh->num_reply_states < mesh->max_reply_states)
  return 1;

 if(m && m->reply_list && m->list_select == mesh_jostle_list) {

  struct timeval age;
  timeval_subtract(&age, mesh->env->now_tv,
   &m->reply_list->start_time);
  if(timeval_smaller(&mesh->jostle_max, &age)) {

   log_nametypeclass(VERB_ALGO, "query jostled out to "
    "make space for a new one",
    m->s.qinfo.qname, m->s.qinfo.qtype,
    m->s.qinfo.qclass);

   if(qbuf) sldns_buffer_copy(mesh->qbuf_bak, qbuf);

   if(m->super_set.count > 0) {
    verbose(VERB_ALGO, "notify supers of failure");
    m->s.return_msg = ((void*)0);
    m->s.return_rcode = LDNS_RCODE_SERVFAIL;
    mesh_walk_supers(mesh, m);
   }
   mesh->stats_jostled ++;
   mesh_state_delete(&m->s);


   if(qbuf) sldns_buffer_copy(qbuf, mesh->qbuf_bak);
   return 1;
  }
 }

 return 0;
}
