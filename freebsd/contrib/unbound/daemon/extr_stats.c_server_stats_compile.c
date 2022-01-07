
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_15__ ;
typedef struct TYPE_21__ TYPE_14__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_21__ {TYPE_10__* cfg; TYPE_7__* auth_zones; TYPE_4__* key_cache; TYPE_3__* infra_cache; TYPE_2__* rrset_cache; int * msg_cache; TYPE_13__* mesh; } ;
struct TYPE_22__ {long long ans_secure; long long ans_bogus; long long ans_rcode_nodata; long long* ans_rcode; long long unwanted_replies; long long qtcp_outgoing; long long rrset_bogus; long long queries_ratelimited; long long msg_cache_count; long long rrset_cache_count; long long infra_cache_count; long long key_cache_count; long long num_query_dnscrypt_secret_missed_cache; long long shared_secret_cache_count; long long nonce_cache_count; long long num_query_dnscrypt_replay; long long num_query_authzone_up; long long num_query_authzone_down; long long mem_stream_wait; scalar_t__ tcp_accept_usage; scalar_t__ num_query_subnet_cache; scalar_t__ num_query_subnet; int hist; } ;
struct worker {TYPE_14__ env; TYPE_8__* front; TYPE_6__* daemon; TYPE_1__* back; TYPE_15__ stats; } ;
struct ub_stats_info {long long mesh_num_states; long long mesh_num_reply_states; long long mesh_jostled; long long mesh_dropped; long long mesh_replies_sent; long long mesh_replies_sum_wait_sec; long long mesh_replies_sum_wait_usec; TYPE_15__ svr; int mesh_time_median; } ;
struct listen_list {TYPE_9__* com; struct listen_list* next; } ;
struct TYPE_31__ {scalar_t__ type; scalar_t__ cur_tcp_count; } ;
struct TYPE_30__ {struct listen_list* cps; } ;
struct TYPE_29__ {int lock; scalar_t__ num_query_down; scalar_t__ num_query_up; } ;
struct TYPE_28__ {TYPE_5__* dnscenv; } ;
struct TYPE_27__ {int * nonces_cache; int * shared_secrets_cache; } ;
struct TYPE_26__ {int * slab; } ;
struct TYPE_25__ {int * hosts; } ;
struct TYPE_24__ {int table; } ;
struct TYPE_23__ {scalar_t__ num_tcp_outgoing; scalar_t__ unwanted_replies; } ;
struct TYPE_19__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_18__ {scalar_t__ count; } ;
struct TYPE_20__ {int histogram; scalar_t__* ans_rcode; scalar_t__ ans_nodata; scalar_t__ ans_bogus; scalar_t__ ans_secure; TYPE_12__ replies_sum_wait; scalar_t__ replies_sent; scalar_t__ stats_dropped; scalar_t__ stats_jostled; scalar_t__ num_reply_states; TYPE_11__ all; } ;
struct TYPE_17__ {int stat_cumulative; } ;


 int NUM_BUCKETS_HIST ;
 scalar_t__ comm_tcp_accept ;
 scalar_t__ count_slabhash_entries (int *) ;
 scalar_t__ get_dnscrypt_cache_miss (struct worker*,int) ;
 scalar_t__ get_dnscrypt_replay (struct worker*,int) ;
 scalar_t__ get_queries_ratelimit (struct worker*,int) ;
 scalar_t__ get_rrset_bogus (struct worker*,int) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 int set_neg_cache_stats (struct worker*,TYPE_15__*,int) ;
 int set_subnet_stats (struct worker*,TYPE_15__*,int) ;
 scalar_t__ tcp_req_info_get_stream_buffer_size () ;
 int timehist_export (int ,int ,int ) ;
 int timehist_quartile (int ,double) ;
 int worker_stats_clear (struct worker*) ;

void
server_stats_compile(struct worker* worker, struct ub_stats_info* s, int reset)
{
 int i;
 struct listen_list* lp;

 s->svr = worker->stats;
 s->mesh_num_states = (long long)worker->env.mesh->all.count;
 s->mesh_num_reply_states = (long long)worker->env.mesh->num_reply_states;
 s->mesh_jostled = (long long)worker->env.mesh->stats_jostled;
 s->mesh_dropped = (long long)worker->env.mesh->stats_dropped;
 s->mesh_replies_sent = (long long)worker->env.mesh->replies_sent;
 s->mesh_replies_sum_wait_sec = (long long)worker->env.mesh->replies_sum_wait.tv_sec;
 s->mesh_replies_sum_wait_usec = (long long)worker->env.mesh->replies_sum_wait.tv_usec;
 s->mesh_time_median = timehist_quartile(worker->env.mesh->histogram,
  0.50);


 s->svr.ans_secure += (long long)worker->env.mesh->ans_secure;
 s->svr.ans_bogus += (long long)worker->env.mesh->ans_bogus;
 s->svr.ans_rcode_nodata += (long long)worker->env.mesh->ans_nodata;
 for(i=0; i<16; i++)
  s->svr.ans_rcode[i] += (long long)worker->env.mesh->ans_rcode[i];
 timehist_export(worker->env.mesh->histogram, s->svr.hist,
  NUM_BUCKETS_HIST);

 s->svr.unwanted_replies = (long long)worker->back->unwanted_replies;
 s->svr.qtcp_outgoing = (long long)worker->back->num_tcp_outgoing;


 s->svr.rrset_bogus = (long long)get_rrset_bogus(worker, reset);


 s->svr.queries_ratelimited = (long long)get_queries_ratelimit(worker, reset);


 s->svr.msg_cache_count = (long long)count_slabhash_entries(worker->env.msg_cache);
 s->svr.rrset_cache_count = (long long)count_slabhash_entries(&worker->env.rrset_cache->table);
 s->svr.infra_cache_count = (long long)count_slabhash_entries(worker->env.infra_cache->hosts);
 if(worker->env.key_cache)
  s->svr.key_cache_count = (long long)count_slabhash_entries(worker->env.key_cache->slab);
 else s->svr.key_cache_count = 0;
 s->svr.num_query_dnscrypt_secret_missed_cache = 0;
 s->svr.shared_secret_cache_count = 0;
 s->svr.nonce_cache_count = 0;
 s->svr.num_query_dnscrypt_replay = 0;

 if(worker->env.auth_zones) {
  if(reset && !worker->env.cfg->stat_cumulative) {
   lock_rw_wrlock(&worker->env.auth_zones->lock);
  } else {
   lock_rw_rdlock(&worker->env.auth_zones->lock);
  }
  s->svr.num_query_authzone_up = (long long)worker->env.
   auth_zones->num_query_up;
  s->svr.num_query_authzone_down = (long long)worker->env.
   auth_zones->num_query_down;
  if(reset && !worker->env.cfg->stat_cumulative) {
   worker->env.auth_zones->num_query_up = 0;
   worker->env.auth_zones->num_query_down = 0;
  }
  lock_rw_unlock(&worker->env.auth_zones->lock);
 }
 s->svr.mem_stream_wait =
  (long long)tcp_req_info_get_stream_buffer_size();


 set_neg_cache_stats(worker, &s->svr, reset);




 s->svr.num_query_subnet = 0;
 s->svr.num_query_subnet_cache = 0;



 s->svr.tcp_accept_usage = 0;
 for(lp = worker->front->cps; lp; lp = lp->next) {
  if(lp->com->type == comm_tcp_accept)
   s->svr.tcp_accept_usage += (long long)lp->com->cur_tcp_count;
 }

 if(reset && !worker->env.cfg->stat_cumulative) {
  worker_stats_clear(worker);
 }
}
